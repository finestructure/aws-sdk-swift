#!/bin/bash
# generate docs for all packages in a swift package
usage() {
    echo "Usage:"
    echo "  ./scripts/generatedocc [version] [currentJob] [totalJobs] [ignorelist]" 
    echo ""
    echo "Example:"
    echo " ./scripts/generatedocc 0.7.0 0 16 AWSBatch,AWSIoTAnalytics"
}

if [ $# -ne 4 ]; then
    usage
    exit 1
fi

VERSION="$1"
CURRENT_JOB="$2"
TOTAL_JOBS="$3"

# convert comma separated list to array
IGNORE=($(echo $4 | tr ',' '\n'))

# setup directory
mkdir -p ./docs/$VERSION

echo "Dumping packages"
dump=$(swift package dump-package)

echo "Finding packages"
packages=$(echo $dump |  jq '.products[].name')

# loop through each package with index
current=0
for package in $packages; do
    # skip if not current job
    if [ $((current % TOTAL_JOBS)) -ne $CURRENT_JOB ]; then
        current=$((current + 1))
        continue
    fi

    # remove quotes
    package=$(echo $package | sed 's/"//g')

    # skip if in ignore list
    if [[ " ${IGNORE[@]} " =~ " ${package} " ]]; then
        echo "Skipping $package"
        current=$((current + 1))
        continue
    fi

    # lowercase package name
    package_lowercase=$(echo $package | tr '[:upper:]' '[:lower:]')

    # generate docs
    echo "Generating docs for $package"
    swift package --allow-writing-to-directory ./docs \
            generate-documentation --target $package \
            --disable-indexing \
            --transform-for-static-hosting \
            --hosting-base-path $VERSION/$package_lowercase \
            --output-path ./docs/$VERSION/$package_lowercase
    
    # break if swift package generate-documentation fails
    if [ $? -ne 0 ]; then
        echo "Failed to generate docs for $package"
        exit 1
    fi

    current=$((current + 1))
done