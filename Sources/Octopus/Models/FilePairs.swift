import FoundationModels

@Generable(description: "A collection of file rename operations.")
struct FilePairs {
    @Guide(description: "One rename for each input file.")
    let pairs: [FilePair]

    @Generable(description: "The current and proposed names for one file.")
    struct FilePair {
        @Guide(description: "The file's current name, including its extension.")
        let originalName: String

        @Guide(description: "The proposed new name, including its extension.")
        let newName: String
    }
}

