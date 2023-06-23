// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Use the Amazon OpenSearch Ingestion API to create and manage ingestion pipelines. OpenSearch Ingestion is a fully managed data collector that delivers real-time log and trace data to OpenSearch Service domains. For more information, see [Getting data into your cluster using OpenSearch Ingestion](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html).
public protocol OSISClientProtocol {
    /// Creates an OpenSearch Ingestion pipeline. For more information, see [Creating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
    func createPipeline(input: CreatePipelineInput) async throws -> CreatePipelineOutputResponse
    /// Deletes an OpenSearch Ingestion pipeline. For more information, see [Deleting Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html).
    func deletePipeline(input: DeletePipelineInput) async throws -> DeletePipelineOutputResponse
    /// Retrieves information about an OpenSearch Ingestion pipeline.
    func getPipeline(input: GetPipelineInput) async throws -> GetPipelineOutputResponse
    /// Retrieves information about a specific blueprint for OpenSearch Ingestion. Blueprints are templates for the configuration needed for a CreatePipeline request. For more information, see [Using blueprints to create a pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
    func getPipelineBlueprint(input: GetPipelineBlueprintInput) async throws -> GetPipelineBlueprintOutputResponse
    /// Returns progress information for the current change happening on an OpenSearch Ingestion pipeline. Currently, this operation only returns information when a pipeline is being created. For more information, see [Tracking the status of pipeline creation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress).
    func getPipelineChangeProgress(input: GetPipelineChangeProgressInput) async throws -> GetPipelineChangeProgressOutputResponse
    /// Retrieves a list of all available blueprints for Data Prepper. For more information, see [Using blueprints to create a pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
    func listPipelineBlueprints(input: ListPipelineBlueprintsInput) async throws -> ListPipelineBlueprintsOutputResponse
    /// Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region. For more information, see [Viewing Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html).
    func listPipelines(input: ListPipelinesInput) async throws -> ListPipelinesOutputResponse
    /// Lists all resource tags associated with an OpenSearch Ingestion pipeline. For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Starts an OpenSearch Ingestion pipeline. For more information, see [Starting an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start).
    func startPipeline(input: StartPipelineInput) async throws -> StartPipelineOutputResponse
    /// Stops an OpenSearch Ingestion pipeline. For more information, see [Stopping an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop).
    func stopPipeline(input: StopPipelineInput) async throws -> StopPipelineOutputResponse
    /// Tags an OpenSearch Ingestion pipeline. For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from an OpenSearch Ingestion pipeline. For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an OpenSearch Ingestion pipeline. For more information, see [Updating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html).
    func updatePipeline(input: UpdatePipelineInput) async throws -> UpdatePipelineOutputResponse
    /// Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to creation. For more information, see [Creating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
    func validatePipeline(input: ValidatePipelineInput) async throws -> ValidatePipelineOutputResponse
}

public enum OSISClientTypes {}