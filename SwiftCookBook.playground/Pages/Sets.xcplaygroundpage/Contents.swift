//: [Previous](@previous)

import Foundation

//: Two ways to initialize
var techTickerSet = Set<String>() // Empty
var financialTickerSet = Set<String>(["GS", "MS", "BAC"])

for t in ["AAPL", "MSFT", "INTC", "GOOG"] {
    techTickerSet.insert(t)
}

let nameSet = Set(["Apple", "Microsoft", "Intel", "Alphabet"])
nameSet.first

techTickerSet.count
techTickerSet.contains("AAPL")

//: Misc set operations

techTickerSet.isDisjoint(with: financialTickerSet)
var allTickers = techTickerSet.union(financialTickerSet)

if !techTickerSet.contains("BBRY") {
    techTickerSet.insert("BBRY")
}

techTickerSet.contains("BBRY")
techTickerSet.remove("BBRY")
techTickerSet.contains("BBRY")

allTickers.count
allTickers.isSuperset(of: techTickerSet)
techTickerSet.isSubset(of: allTickers)

allTickers.removeAll()
allTickers.isEmpty

//: [Next](@next)
