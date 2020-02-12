[Basics](README.md) | [Arrays](array.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) | [Sorting](sorting.md) | [Strings](strings.md) | [Functional Swift](functional.md)

## Functional Swift

### map

```swift
[1,2,3].map {$0 * 2}

let row = "id first last"
let csv = String(row.map {$0 == " " ? "," : $0}) // replace all occurrences
```

### filter

```swift
let evens = [1,2,3,4,5,6,7,8,9].filter {$0 % 2 == 0} // isEven
["5", "a", "6","b"].filter {($0 as Character).isNumber}
```

### forEach

```swift
[pronounView, answerWellView, answerConjugationView].forEach (view.addSubview)
```

### reduce

```swift
let sum = [1,2,3].reduce(0, +)
let product = [1,2,3].reduce(1, *)
```

### flatMap, compactMap

```swift
["55", "a", "6","b"].compactMap {Int($0)}
```

### take


```swift
[1,2,3,4,5,6,7,8,9].prefix(3)
```

If you wanted to have your own **take** extension on Array, you could add something like the following:

```swift
extension Array {
    func take(_ n: Int) -> ArraySlice<Element> {
        self[0..<n]
    }
}

let ar0 = [1,2,3].take(2)
["a","b","c"].take(2)

```

[prefix(_:)](https://developer.apple.com/documentation/swift/sequence/3128808-prefix)


### takeWhile

```swift
[1,2,3,4,-5,6,7,8,9].prefix(while: {$0 > 0} )
```

[prefix(while:)](https://developer.apple.com/documentation/swift/sequence/3128810-prefix)

### drop/dropWhile

```swift
let xs = [1,2,3] + [4,5,6]
let test = (0...3).drop { $0 > 1 } //dropWhile

xs.drop { $0 <= 3 }
//[1,2,3,4,5,6].drop(while: 2)
[1,2,3,4,5,6].dropFirst(3)
[1,2,3,4,5,6].dropFirst() // defaults to 1

[1,2,3,4,5,6].dropLast() // defaults to 1

```

 [drop(while:)](https://developer.apple.com/documentation/swift/sequence/3128801-drop) | [dropFirst(_:)](https://developer.apple.com/documentation/swift/sequence/3128803-dropfirst) | [dropLast(_:)](https://developer.apple.com/documentation/swift/sequence/3128805-droplast)

### zip

```swift
let companies = ["Apple", "Google", "Microsoft"]
let tickers = ["AAPL", "GOOGL","MSFT"]

for (ticker, company) in zip(tickers, companies) {
    print("\(ticker),\(company)")
}
```

- [zip(_:_:)](https://developer.apple.com/documentation/swift/1541125-zip)


### Combining

```swift
[1,2,3,4,5,6,7,8,9].filter {$0 % 2 == 0}.map {$0 * 2}.reduce(0, +)
["550", "a", "6", "b", "42", "99", "100"].compactMap {Int($0)}.filter {$0 < 100}
```
