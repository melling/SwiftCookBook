# h4labs Swift Cookbook

This content will (eventually) be mirrored on my site: http://www.h4labs.com/dev/ios/swift_cookbook.html

This repo will be mainly about the Swift language.  I have another [repo with small iOS projects](https://github.com/melling/ios_topics/blob/master/README.md)

Swift 5.x compatible

+ [Arrays](array.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) |[Strings](strings.md) | [Functional Swift](functional.md)

## Variable Declaration

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
let guess = 9
let youWin:Bool

if guess < 10 {
   youWin = true
} else {
   youWin = false
}

```

## for


## for enumeration


## function declarations

```swift
func add1(i:Int) -> Int { i + 1 } // return word not needed if we have 1 expression
let r0 = add1(i: 1) // 2
```

Same function but use _ to not use a named parameter

```swift
func add1(_ i:Int) -> Int { i + 1 } // return word not needed if we have 1 expression
let r0 = add1(1) // 2
```


```swift

```


## enum




