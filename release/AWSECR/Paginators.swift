// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeImagesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeImagesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeImagesOutputResponse`
extension ECRClient {
    public func describeImagesPaginated(input: DescribeImagesInput) -> ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutputResponse>(input: input, inputKey: \DescribeImagesInput.nextToken, outputKey: \DescribeImagesOutputResponse.nextToken, paginationFunction: self.describeImages(input:))
    }
}

extension DescribeImagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImagesInput {
        return DescribeImagesInput(
            filter: self.filter,
            imageIds: self.imageIds,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeImagesPaginated`
/// to access the nested member `[ECRClientTypes.ImageDetail]`
/// - Returns: `[ECRClientTypes.ImageDetail]`
extension PaginatorSequence where Input == DescribeImagesInput, Output == DescribeImagesOutputResponse {
    public func imageDetails() async throws -> [ECRClientTypes.ImageDetail] {
        return try await self.asyncCompactMap { item in item.imageDetails }
    }
}

/// Paginate over `[DescribeImageScanFindingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeImageScanFindingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeImageScanFindingsOutputResponse`
extension ECRClient {
    public func describeImageScanFindingsPaginated(input: DescribeImageScanFindingsInput) -> ClientRuntime.PaginatorSequence<DescribeImageScanFindingsInput, DescribeImageScanFindingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeImageScanFindingsInput, DescribeImageScanFindingsOutputResponse>(input: input, inputKey: \DescribeImageScanFindingsInput.nextToken, outputKey: \DescribeImageScanFindingsOutputResponse.nextToken, paginationFunction: self.describeImageScanFindings(input:))
    }
}

extension DescribeImageScanFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImageScanFindingsInput {
        return DescribeImageScanFindingsInput(
            imageId: self.imageId,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

/// Paginate over `[DescribePullThroughCacheRulesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribePullThroughCacheRulesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribePullThroughCacheRulesOutputResponse`
extension ECRClient {
    public func describePullThroughCacheRulesPaginated(input: DescribePullThroughCacheRulesInput) -> ClientRuntime.PaginatorSequence<DescribePullThroughCacheRulesInput, DescribePullThroughCacheRulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribePullThroughCacheRulesInput, DescribePullThroughCacheRulesOutputResponse>(input: input, inputKey: \DescribePullThroughCacheRulesInput.nextToken, outputKey: \DescribePullThroughCacheRulesOutputResponse.nextToken, paginationFunction: self.describePullThroughCacheRules(input:))
    }
}

extension DescribePullThroughCacheRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePullThroughCacheRulesInput {
        return DescribePullThroughCacheRulesInput(
            ecrRepositoryPrefixes: self.ecrRepositoryPrefixes,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId
        )}
}

/// Paginate over `[DescribeRepositoriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeRepositoriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeRepositoriesOutputResponse`
extension ECRClient {
    public func describeRepositoriesPaginated(input: DescribeRepositoriesInput) -> ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutputResponse>(input: input, inputKey: \DescribeRepositoriesInput.nextToken, outputKey: \DescribeRepositoriesOutputResponse.nextToken, paginationFunction: self.describeRepositories(input:))
    }
}

extension DescribeRepositoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRepositoriesInput {
        return DescribeRepositoriesInput(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryNames: self.repositoryNames
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeRepositoriesPaginated`
/// to access the nested member `[ECRClientTypes.Repository]`
/// - Returns: `[ECRClientTypes.Repository]`
extension PaginatorSequence where Input == DescribeRepositoriesInput, Output == DescribeRepositoriesOutputResponse {
    public func repositories() async throws -> [ECRClientTypes.Repository] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}

/// Paginate over `[GetLifecyclePolicyPreviewOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetLifecyclePolicyPreviewInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetLifecyclePolicyPreviewOutputResponse`
extension ECRClient {
    public func getLifecyclePolicyPreviewPaginated(input: GetLifecyclePolicyPreviewInput) -> ClientRuntime.PaginatorSequence<GetLifecyclePolicyPreviewInput, GetLifecyclePolicyPreviewOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetLifecyclePolicyPreviewInput, GetLifecyclePolicyPreviewOutputResponse>(input: input, inputKey: \GetLifecyclePolicyPreviewInput.nextToken, outputKey: \GetLifecyclePolicyPreviewOutputResponse.nextToken, paginationFunction: self.getLifecyclePolicyPreview(input:))
    }
}

extension GetLifecyclePolicyPreviewInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetLifecyclePolicyPreviewInput {
        return GetLifecyclePolicyPreviewInput(
            filter: self.filter,
            imageIds: self.imageIds,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getLifecyclePolicyPreviewPaginated`
/// to access the nested member `[ECRClientTypes.LifecyclePolicyPreviewResult]`
/// - Returns: `[ECRClientTypes.LifecyclePolicyPreviewResult]`
extension PaginatorSequence where Input == GetLifecyclePolicyPreviewInput, Output == GetLifecyclePolicyPreviewOutputResponse {
    public func previewResults() async throws -> [ECRClientTypes.LifecyclePolicyPreviewResult] {
        return try await self.asyncCompactMap { item in item.previewResults }
    }
}

/// Paginate over `[ListImagesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListImagesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListImagesOutputResponse`
extension ECRClient {
    public func listImagesPaginated(input: ListImagesInput) -> ClientRuntime.PaginatorSequence<ListImagesInput, ListImagesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListImagesInput, ListImagesOutputResponse>(input: input, inputKey: \ListImagesInput.nextToken, outputKey: \ListImagesOutputResponse.nextToken, paginationFunction: self.listImages(input:))
    }
}

extension ListImagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImagesInput {
        return ListImagesInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listImagesPaginated`
/// to access the nested member `[ECRClientTypes.ImageIdentifier]`
/// - Returns: `[ECRClientTypes.ImageIdentifier]`
extension PaginatorSequence where Input == ListImagesInput, Output == ListImagesOutputResponse {
    public func imageIds() async throws -> [ECRClientTypes.ImageIdentifier] {
        return try await self.asyncCompactMap { item in item.imageIds }
    }
}