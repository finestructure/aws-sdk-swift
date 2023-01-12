// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[GetExecutionHistoryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetExecutionHistoryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetExecutionHistoryOutputResponse`
extension SFNClient {
    public func getExecutionHistoryPaginated(input: GetExecutionHistoryInput) -> ClientRuntime.PaginatorSequence<GetExecutionHistoryInput, GetExecutionHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetExecutionHistoryInput, GetExecutionHistoryOutputResponse>(input: input, inputKey: \GetExecutionHistoryInput.nextToken, outputKey: \GetExecutionHistoryOutputResponse.nextToken, paginationFunction: self.getExecutionHistory(input:))
    }
}

extension GetExecutionHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetExecutionHistoryInput {
        return GetExecutionHistoryInput(
            executionArn: self.executionArn,
            includeExecutionData: self.includeExecutionData,
            maxResults: self.maxResults,
            nextToken: token,
            reverseOrder: self.reverseOrder
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getExecutionHistoryPaginated`
/// to access the nested member `[SFNClientTypes.HistoryEvent]`
/// - Returns: `[SFNClientTypes.HistoryEvent]`
extension PaginatorSequence where Input == GetExecutionHistoryInput, Output == GetExecutionHistoryOutputResponse {
    public func events() async throws -> [SFNClientTypes.HistoryEvent] {
        return try await self.asyncCompactMap { item in item.events }
    }
}

/// Paginate over `[ListActivitiesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListActivitiesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListActivitiesOutputResponse`
extension SFNClient {
    public func listActivitiesPaginated(input: ListActivitiesInput) -> ClientRuntime.PaginatorSequence<ListActivitiesInput, ListActivitiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListActivitiesInput, ListActivitiesOutputResponse>(input: input, inputKey: \ListActivitiesInput.nextToken, outputKey: \ListActivitiesOutputResponse.nextToken, paginationFunction: self.listActivities(input:))
    }
}

extension ListActivitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListActivitiesInput {
        return ListActivitiesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listActivitiesPaginated`
/// to access the nested member `[SFNClientTypes.ActivityListItem]`
/// - Returns: `[SFNClientTypes.ActivityListItem]`
extension PaginatorSequence where Input == ListActivitiesInput, Output == ListActivitiesOutputResponse {
    public func activities() async throws -> [SFNClientTypes.ActivityListItem] {
        return try await self.asyncCompactMap { item in item.activities }
    }
}

/// Paginate over `[ListExecutionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListExecutionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListExecutionsOutputResponse`
extension SFNClient {
    public func listExecutionsPaginated(input: ListExecutionsInput) -> ClientRuntime.PaginatorSequence<ListExecutionsInput, ListExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListExecutionsInput, ListExecutionsOutputResponse>(input: input, inputKey: \ListExecutionsInput.nextToken, outputKey: \ListExecutionsOutputResponse.nextToken, paginationFunction: self.listExecutions(input:))
    }
}

extension ListExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExecutionsInput {
        return ListExecutionsInput(
            mapRunArn: self.mapRunArn,
            maxResults: self.maxResults,
            nextToken: token,
            stateMachineArn: self.stateMachineArn,
            statusFilter: self.statusFilter
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listExecutionsPaginated`
/// to access the nested member `[SFNClientTypes.ExecutionListItem]`
/// - Returns: `[SFNClientTypes.ExecutionListItem]`
extension PaginatorSequence where Input == ListExecutionsInput, Output == ListExecutionsOutputResponse {
    public func executions() async throws -> [SFNClientTypes.ExecutionListItem] {
        return try await self.asyncCompactMap { item in item.executions }
    }
}

/// Paginate over `[ListMapRunsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMapRunsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMapRunsOutputResponse`
extension SFNClient {
    public func listMapRunsPaginated(input: ListMapRunsInput) -> ClientRuntime.PaginatorSequence<ListMapRunsInput, ListMapRunsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMapRunsInput, ListMapRunsOutputResponse>(input: input, inputKey: \ListMapRunsInput.nextToken, outputKey: \ListMapRunsOutputResponse.nextToken, paginationFunction: self.listMapRuns(input:))
    }
}

extension ListMapRunsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMapRunsInput {
        return ListMapRunsInput(
            executionArn: self.executionArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listMapRunsPaginated`
/// to access the nested member `[SFNClientTypes.MapRunListItem]`
/// - Returns: `[SFNClientTypes.MapRunListItem]`
extension PaginatorSequence where Input == ListMapRunsInput, Output == ListMapRunsOutputResponse {
    public func mapRuns() async throws -> [SFNClientTypes.MapRunListItem] {
        return try await self.asyncCompactMap { item in item.mapRuns }
    }
}

/// Paginate over `[ListStateMachinesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStateMachinesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStateMachinesOutputResponse`
extension SFNClient {
    public func listStateMachinesPaginated(input: ListStateMachinesInput) -> ClientRuntime.PaginatorSequence<ListStateMachinesInput, ListStateMachinesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStateMachinesInput, ListStateMachinesOutputResponse>(input: input, inputKey: \ListStateMachinesInput.nextToken, outputKey: \ListStateMachinesOutputResponse.nextToken, paginationFunction: self.listStateMachines(input:))
    }
}

extension ListStateMachinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStateMachinesInput {
        return ListStateMachinesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStateMachinesPaginated`
/// to access the nested member `[SFNClientTypes.StateMachineListItem]`
/// - Returns: `[SFNClientTypes.StateMachineListItem]`
extension PaginatorSequence where Input == ListStateMachinesInput, Output == ListStateMachinesOutputResponse {
    public func stateMachines() async throws -> [SFNClientTypes.StateMachineListItem] {
        return try await self.asyncCompactMap { item in item.stateMachines }
    }
}