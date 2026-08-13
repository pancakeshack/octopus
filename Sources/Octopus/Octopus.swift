import FoundationModels

@main
enum Octopus {
    static private let dummyData: [String] = [
        "South.Park.S07E01.Cancelled.DVDRip.XviD-TBS.avi",
        "South.Park.S07E02.Krazy.Kripples.DVDRip.XviD-TBS.avi",
        "South.Park.S07E03.Toilet.Paper.DVDRip.XviD-TBS.avi",
        "South.Park.S07E04.Im.a.Little.Bit.Country.DVDRip.XviD-TBS.avi",
        "South.Park.S07E05.Fat.Butt.and.Pancake.Head.DVDRip.XviD-TBS.avi",
        "South.Park.S07E06.Lil.Crime.Stoppers.DVDRip.XviD-TBS.avi",
        "South.Park.S07E07.Red.Mans.Greed.DVDRip.XviD-TBS.avi",
        "South.Park.S07E08.South.Park.Is.Gay.DVDRip.XviD-TBS.avi",
        "South.Park.S07E09.Christian.Rock.Hard.DVDRip.XviD-TBS.avi",
        "South.Park.S07E10.Grey.Dawn.DVDRip.XviD-TBS.avi",
        "South.Park.S07E11.Casa.Bonita.DVDRip.XviD-TBS.avi",
        "South.Park.S07E12.All.About.Mormons.DVDRip.XviD-TBS.avi",
        "South.Park.S07E13.Butt.Out.DVDRip.XviD-TBS.avi",
        "South.Park.S07E14.Raisins.DVDRip.XviD-TBS.avi",
        "South.Park.S07E15.Its.Christmas.in.Canada.DVDRip.XviD-TBS.avi",
        "South.Park.Season.7.cover.jpg",
        "South.Park.S07.nfo",
        "Downloaded.from.example-torrents.txt",
    ]

    static func main() async throws {
        let llmService = LocalLlmService()
        let result = try await llmService.generatePairs(files: dummyData)

        for (_, value) in result.pairsMap {
            print(value)
        }
    }
}
