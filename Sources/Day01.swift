import Algorithms

struct Day01: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [String] {
    data.split(separator: "\n").map { String($0) }
  }

  func part1() -> Any {
    entities
      .compactMap { entity in
        let firstNumber = entity.first { $0.isNumber }.map(String.init)
        let lastNumber = entity.last { $0.isNumber }.map(String.init)
        let joinedNumbers = [firstNumber, lastNumber].compactMap { String($0 ?? "") }.joined()
        return Int(joinedNumbers)
      }
      .reduce(0, +)
  }
}
