import FoundationModels

@Generable(description: "A pair of files and their new names, in the shape of [old:new]")
struct FilePairs {
    let pairs: [String: String]
}
