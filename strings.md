
## Swift Strings

###  String Creation

```swift
var mystr:String // Mutable string

mystr = "\n"   // a newline character
let s1 = "\\n" // Two characters, \ and n
let bear = "🐻"

mystr = "Jon \"Maddog\" Orwant"  // escaped double quote
var str = "Hello, playground" // Mutable string
let language = "Swift" // Immutable string


var str1: String
var str2: String = "hello world"
```

### String Length

```swift
let stringLength = str.count
```

###  String Equality

```swift
if str == "Hello, playground" {
    print("Strings are Equal")
}
```

###  Case Insensitive Comparison

```swift
let nativeLanguage = "French"
if nativeLanguage.caseInsensitiveCompare("french") == .orderedSame { // NSComparisonResult.OrderedSame
    print("Strings are equal")
}
```

### String Inequality

```swift
if str != "Hello world" {
    print("Strings are NOT Equal")
}
```


### Test for Empty String
```swift
var aString = ""
if aString.isEmpty {
    print("String is empty")
}
```


### Concatenate

```swift
str1 = "Hello, "
str2 = "playground"

str = str1 + str2 // Swift's concatenate operation
str = "\(str1)\(str2)" // Using String interpolation
```

### Append string

```swift
str = "hello"
str += " world"
```

###  Append a single character

```swift
let period: Character = "."
str.append(period)
```


### Prepend string

```swift
_ = "My \(str)" // Ignoring result
_ = "My " + str
```

### Remove Last Character/chop

```swift
var s = "abcd"
let lastChar: Character = s.removeLast() // mutates s == "abc"
```

###  Simple CSV split

```swift
let csv = "one,two,3"

let anArray = csv.components(separatedBy: ",")
print(anArray)
```

### Join string to CSV

```swift
anArray.joined(separator: ",")
//: String Contains a Substring

str = "www"
let url = "https://www.h4labs.com/"

if url.contains(str) {
    print("Contains string: \(str)")
}
```


### String begins with/Has prefix

```swift
url.hasPrefix("https:")
```

### String ends with/Has suffix

```swift
url.hasSuffix("/")
```


### String to Letter Array/Split string by character

```swift
var letters:[String] = []
"horse".forEach {letters.append(String($0))}
letters
```

```swift
let arr = str.map { String($0) }
```

###  Trim White Space

```swift
var blogTitle = "  Swift Cookbook  ".trimmingCharacters(in: NSCharacterSet.whitespaces)

//stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
```


###  Also remove newlines

```swift
blogTitle = "  Swift Cookbook  \n".trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
//: Remove surrounding quotes
let quotedString = "\"h4labs\""

let quotesRemoved = quotedString.replacingOccurrences(of: "\"", with: "")
```


###  Uppercase string

```swift
var company = "apple computer"
company = company.uppercased()
```

###  Capitalize/Title case

```swift
company = company.capitalized// capitalize every word
company = company.localizedCapitalized // capitalize every word localized
```

###  Lowercase

```swift
company = company.lowercased()
```

###  Loop Over Every Character of String

```swift
for character in "hello world" {
    print(character)
}
```

```swift
let letters = "abcdefg"
var csv = ""
for character in letters {
    csv.append(character)
    csv.append(",")
}
print(csv)
```

### String to Int

```swift
let aNumberStr = "10"
let anInt: Int? = Int(aNumberStr)
let i: Int = Int(aNumberStr) ?? 0 // default to zero and make nonnullable
```

### String to Double

```swift
let aDouble: Double? = Double(aNumberStr)
```

### First letter

```swift
let aWord = "hello"
let firstLetter = aWord.characters.first
let lastLetter = aWord.characters.last
let x = aWord.characters.prefix(3)
String(x)
```

### Multi-line Strings

```swift
let str = """
.#..#
 .....
 #####
 ....#
 ...##
"""
```


## TODO

### Is a String a Digit/isDigit

```swift

```
