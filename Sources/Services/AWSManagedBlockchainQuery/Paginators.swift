// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ManagedBlockchainQueryClient {
    /// Paginate over `[ListTokenBalancesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTokenBalancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTokenBalancesOutputResponse`
    public func listTokenBalancesPaginated(input: ListTokenBalancesInput) -> ClientRuntime.PaginatorSequence<ListTokenBalancesInput, ListTokenBalancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTokenBalancesInput, ListTokenBalancesOutputResponse>(input: input, inputKey: \ListTokenBalancesInput.nextToken, outputKey: \ListTokenBalancesOutputResponse.nextToken, paginationFunction: self.listTokenBalances(input:))
    }
}

extension ListTokenBalancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTokenBalancesInput {
        return ListTokenBalancesInput(
            maxResults: self.maxResults,
            nextToken: token,
            ownerFilter: self.ownerFilter,
            tokenFilter: self.tokenFilter
        )}
}

extension PaginatorSequence where Input == ListTokenBalancesInput, Output == ListTokenBalancesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listTokenBalancesPaginated`
    /// to access the nested member `[ManagedBlockchainQueryClientTypes.TokenBalance]`
    /// - Returns: `[ManagedBlockchainQueryClientTypes.TokenBalance]`
    public func tokenBalances() async throws -> [ManagedBlockchainQueryClientTypes.TokenBalance] {
        return try await self.asyncCompactMap { item in item.tokenBalances }
    }
}
extension ManagedBlockchainQueryClient {
    /// Paginate over `[ListTransactionEventsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTransactionEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTransactionEventsOutputResponse`
    public func listTransactionEventsPaginated(input: ListTransactionEventsInput) -> ClientRuntime.PaginatorSequence<ListTransactionEventsInput, ListTransactionEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTransactionEventsInput, ListTransactionEventsOutputResponse>(input: input, inputKey: \ListTransactionEventsInput.nextToken, outputKey: \ListTransactionEventsOutputResponse.nextToken, paginationFunction: self.listTransactionEvents(input:))
    }
}

extension ListTransactionEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTransactionEventsInput {
        return ListTransactionEventsInput(
            maxResults: self.maxResults,
            network: self.network,
            nextToken: token,
            transactionHash: self.transactionHash
        )}
}

extension PaginatorSequence where Input == ListTransactionEventsInput, Output == ListTransactionEventsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listTransactionEventsPaginated`
    /// to access the nested member `[ManagedBlockchainQueryClientTypes.TransactionEvent]`
    /// - Returns: `[ManagedBlockchainQueryClientTypes.TransactionEvent]`
    public func events() async throws -> [ManagedBlockchainQueryClientTypes.TransactionEvent] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
extension ManagedBlockchainQueryClient {
    /// Paginate over `[ListTransactionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTransactionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTransactionsOutputResponse`
    public func listTransactionsPaginated(input: ListTransactionsInput) -> ClientRuntime.PaginatorSequence<ListTransactionsInput, ListTransactionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTransactionsInput, ListTransactionsOutputResponse>(input: input, inputKey: \ListTransactionsInput.nextToken, outputKey: \ListTransactionsOutputResponse.nextToken, paginationFunction: self.listTransactions(input:))
    }
}

extension ListTransactionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTransactionsInput {
        return ListTransactionsInput(
            address: self.address,
            fromBlockchainInstant: self.fromBlockchainInstant,
            maxResults: self.maxResults,
            network: self.network,
            nextToken: token,
            sort: self.sort,
            toBlockchainInstant: self.toBlockchainInstant
        )}
}

extension PaginatorSequence where Input == ListTransactionsInput, Output == ListTransactionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listTransactionsPaginated`
    /// to access the nested member `[ManagedBlockchainQueryClientTypes.TransactionOutputItem]`
    /// - Returns: `[ManagedBlockchainQueryClientTypes.TransactionOutputItem]`
    public func transactions() async throws -> [ManagedBlockchainQueryClientTypes.TransactionOutputItem] {
        return try await self.asyncCompactMap { item in item.transactions }
    }
}