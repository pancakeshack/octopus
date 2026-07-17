protocol LlmService {
    func generatePairs(files: [String]) async throws -> FilePairs
}
