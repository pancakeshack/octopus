import ArgumentParser

@main
struct Octopus: AsyncParsableCommand {
    mutating func run() async throws {
        let llmService = LocalLlmService()
        if !llmService.isAvailable {
            fatalError("The llm service is not available on your system.")
        }
        print("Good to go!")
    }
}
