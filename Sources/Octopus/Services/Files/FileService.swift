import Foundation

protocol FileService {
    func getFileNames(at url: URL) throws -> [String]
}