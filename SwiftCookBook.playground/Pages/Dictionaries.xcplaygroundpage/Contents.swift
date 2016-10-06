//: [Previous](@previous)

import Foundation

//: Dictionary Creation
var dictionary:[String:String] = [:] // Empty

dictionary = ["AAPL": "Apple",
              "MSFT": "Microsoft",
              "ABC": "zzz",
              "GOOG": "Google"]

let sharesOwned = ["AAPL": 200, "MSFT": 50] // [String:Int]

//: Number of Elements (Keys) in Dictionary
let n = dictionary.count
n
// Print value.  Should wrap in let.  See below
let appleLongName = dictionary["AAPL"]!
print("\(appleLongName)")

//: Iterate over dictionary keys and values
func dumpDictionary() {
    for (key, value) in dictionary {
        print("\(key), \(value)")
    }
}
dumpDictionary()

//: Does Dictionary contain a key?
//: Value might not exist so we wrap in let
if let value = dictionary["AAPL"] {
    print("Found value for key = \(value)")
}

//: Add New Key/Value
dictionary["GOOGL"] = "Alphabet"

//: Get all keys
dictionary.keys

//: Remove Key/Value
dictionary.removeValue(forKey: "GOOG")
dictionary["AAPL"] = nil

dictionary.count
let sortedKeys =  Array(dictionary.keys).sorted(by: <)

//: Print, sorted by keys
for (key, value) in dictionary.sorted(by: { $0.0 < $1.0 }) {
    
    //    let value = dictionary[key]
    print("=>\(key), \(value)")
}

dictionary.updateValue("Alpha", forKey: "ALPHA")

dumpDictionary()

//: Remove All Dictionary Values
dictionary.removeAll()

//: Invert Key/Values

//: Create UITableView Index

//: [Next](@next)
