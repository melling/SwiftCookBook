## Swift Dictionaries/Hash Maps

###  Dictionary Creation

```swift
var dictionary:[String:String] = [:] // Empty

dictionary = ["AAPL": "Apple",
              "MSFT": "Microsoft",
              "AMZN": "Amazon",
              "GOOG": "Google"]

let sharesOwned = ["AAPL": 200, "MSFT": 50] // [String:Int]
```


###  Number of Elements (Keys) in Dictionary

```swift
let n = dictionary.count
```


### Print value.  Should wrap in let.  See below

```swift
let appleLongName = dictionary["AAPL"]!

print("\(appleLongName)")

```


###  Iterate over dictionary keys and values

```swift
func dumpDictionary() {

    for (key, value) in dictionary {
        print("\(key), \(value)")
    }
}

dumpDictionary()
```



###  Does Dictionary contain a key?

Value might not exist so we wrap in let

```swift
if let value = dictionary["AAPL"] {
    print("Found value for key = \(value)")
} else {
    dictionary["AAPL"] = "Apple" // Add
}

```


### Add New Key/Value

```swift
dictionary["GOOGL"] = "Alphabet"
```



###  Get all keys

```swift
dictionary.keys
```



### Remove Key/Value

```swift
dictionary.removeValue(forKey: "GOOG")

dictionary["AAPL"] = nil

dictionary.count

let sortedKeys =  Array(dictionary.keys).sorted(by: <)
```



### Print, sorted by keys

```swift
for (key, value) in dictionary.sorted(by: { $0.0 < $1.0 }) {

    //    let value = dictionary[key]

    print("=>\(key), \(value)")

}
```


```swift
dictionary.updateValue("Alpha", forKey: "ALPHA")

dumpDictionary()
```

###  Remove All Dictionary Values

```swift
dictionary.removeAll()
```



### Invert Key/Values

```swift

```

