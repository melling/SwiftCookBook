## Functional Swift

- [Basics](README.md) | [Arrays](array.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) | [Sorting](sorting.md) | [Strings](strings.md) | [Functional Swift](functional.md)

### map

```swift
[1,2,3].map {$0 * 2}
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

```

### drop/dropWhile

```swift

```

### zip

```swift
let companies = ["Apple", "Google", "Microsoft"]
let tickers = ["AAPL", "GOOGL","MSFT"]

for (ticker, company) in zip(tickers, companies) {
    print("\(ticker),\(company)")
}
```

### Combining

```swift
[1,2,3,4,5,6,7,8,9].filter {$0 % 2 == 0}.map {$0 * 2}.reduce(0, +)
["550", "a", "6", "b", "42", "99", "100"].compactMap {Int($0)}.filter {$0 < 100}
```
