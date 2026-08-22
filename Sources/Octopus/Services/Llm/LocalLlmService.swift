import FoundationModels

struct LocalLlmService: LlmService {
    private static let instructions = """
        The input is a list of filenames in a folder. Your job is to provide new names for them to meet the
        format of the Jellyfin media server. They must be a combination of the season number and the episode
        number, for instance "s01e02.mkv". Keep the extension. Any files that are not media files you can ignore in the output.
        Do not invent missing files or details, they must only be from the input.
        """

    private let model = SystemLanguageModel.default

    var isAvailable: Bool {
        model.isAvailable
    }

    func generatePairs(files: [String]) async throws -> FilePairs {
        let session = LanguageModelSession(
            model: model,
            instructions: Self.instructions,
        )

        let prompt = files.joined(separator: ",")
        let response = try await session.respond(
            to: prompt,
            generating: FilePairs.self
        )

        return response.content
    }
}
