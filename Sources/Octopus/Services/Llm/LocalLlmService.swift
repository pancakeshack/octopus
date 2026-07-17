import FoundationModels

struct LocalLlmService: LlmService {
    func generatePairs(files: [String]) async throws -> FilePairs {
        fatalError("not yet implemented")
    }
}
