# h4labs Swift Cookbook

This content will (eventually) be mirrored on my site: http://www.h4labs.com/dev/ios/swift_cookbook.html

This repo will be mainly about the Swift language.  I have another [repo with small iOS projects](https://github.com/melling/ios_topics/blob/master/README.md)

Swift 5.x compatible

- [Basics](README.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Sorting](sorting.md) | [Strings](strings.md) | [Functional Swift](functional.md)
- Collections: [Arrays](array.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) | 

## Variable Declarations

Common types: **Int**, **String**, **Bool**, **CGFloat**, **Double**, **Float**

**let** is used to declare immutable values, while **var** is used to declare mutable variables.

```swift
let language = "Swift" // Immutable String
var i = 0 // mutable Int
i += 1
var x:CGFloat = 2
var name:String
let max:Int
max = 99
var isDone = false // Bool
```

## if

```swift
let fuel = 9
let msg:String // Must assign in all cases

if fuel < 10 {
    msg = "Fuel dangerously low: \(fuel)"
} else if fuel < 50 {
    msg = "Fuel low: \(fuel)"
} else {
    msg = "Fuel OK"
}
```

## ternary operator

```swift
let color = Bool.random() ? "red" : "black"
```

## switch

```swift

switch ticker {

 case "AAPL":

 case "GOOGL":

 case "MSFT":

 default:

}

```

## for

```swift
for i in 0..<10 {
    print("\(i)")
}

for i in 0...9 {
    print("\(i)")
}
```

## for enumeration

```swift
for company in ["Apple", "Google", "Microsoft"] {
    print("\(company)")
}
```

## function declarations

```swift
func add1(i:Int) -> Int { i + 1 } // return word not needed if we have 1 expression
let r0 = add1(i: 1) // 2
```

Same function but add _ to not need a named parameter

```swift
func add1(_ i:Int) -> Int { i + 1 } // return word not needed if we have 1 expression
let r0 = add1(1) // 2
```


```swift

```
### Multiple return values using tuples

```swift
func bestLanguage() -> (String, Int) {
   return ("Swift", 1)
}

let (language, rank) = bestLanguage()
```

## Randomness

```swift
let rnd = Int.random(in: 0...1) // 0 or 1
Bool.random() // true or false

Int.random(in: 20...29) // Random in range 20 through 29
Float.random(in: 0...1) // Random between 0 and 1

[1,2,3].randomElement() // random Array element
Set([1,2,3]).randomElement() // random Set element
```

### Shuffle

Sometimes, it's better to shuffle an Array then simply iterate of the result to get a random element.  This allows each element to be chosen at random exactly once.

```swift
let shuffled = [1,2,3].shuffled()
```
## enum




