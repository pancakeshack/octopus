protocol LlmService {
    var isAvailable: Bool { get }
    func generatePairs(files: [String]) async throws -> FilePairs
}
