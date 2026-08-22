import Foundation

struct LocalFileService: FileService {
    private let fileManager = FileManager.default
    
    func getFileNames(at url: URL) throws -> [String] {
        let files = try fileManager.contentsOfDirectory(at: url, includingPropertiesForKeys: nil, options: [.skipsHiddenFiles])

        return files.map(\.lastPathComponent)
    }
}