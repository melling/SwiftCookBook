//: [Previous](@previous)

/*:
 A Cookbook of Swift String functions
 
 Copy and Paste into a Swift Playground
 Version: 20151019.01
 
 Some ideas came from [Perl](http://pleac.sourceforge.net/pleac_perl/strings.html) and [Python](http://pleac.sourceforge.net/pleac_python/strings.html) Pleacs
 */
import Foundation

//: String Introduction
var mystr:String // Mutable string

mystr = "\n"   // a newline character
let s1 = "\\n" // Two characters, \ and n
let bear = "🐻"

for character in s1.characters {
    var s0 = ":"
    s0.append(character)
    print(s0)
}

mystr = "Jon \"Maddog\" Orwant"  // escaped double quote
var str = "Hello, playground" // Mutable string
let language = "Swift" // Immutable string



var str1: String
var str2: String = "hello world"

//: String Length

let stringLength = str.characters.count

//: String Equality

if str == "Hello, playground" {
    print("Strings are Equal")
}

//: Case Insensitive Comparison

let nativeLanguage = "French"
if nativeLanguage.caseInsensitiveCompare("french") == .orderedSame { // NSComparisonResult.OrderedSame
    print("Strings are equal")
}


//: String Inequality

if str != "Hello world" {
    print("Strings are NOT Equal")
}

//: Test for Empty String
var aString = ""
if aString.isEmpty {
    print("String is empty")
}


//: Concatenate

str1 = "Hello, "
str2 = "playground"

str = str1 + str2 // Swift's concatenate operation
str = "\(str1)\(str2)" // Using String interpolation

//: Append string

str = "hello"
str += " world"

//: Append a single character

let period: Character = "."
str.append(period)

//: Prepend string

_ = "My \(str)" // Ignoring result
_ = "My " + str

//: Simple CSV split
let csv = "one,two,3"

let anArray = csv.components(separatedBy: ",")
print(anArray)

//: Join string to CSV
anArray.joined(separator: ",")
//: String Contains a Substring

str = "www"
let url = "https://www.h4labs.com/"

if url.contains(str) {
    print("Contains string: \(str)")
}

//: String begins with/Has prefix

url.hasPrefix("https:")

//: String ends with/Has suffix
url.hasSuffix("/")

//: String to Letter Array
var letters:[String] = []
"horse".characters.forEach {letters.append(String($0))}
letters

//: Trim White Space

var blogTitle = "  Swift Cookbook  ".trimmingCharacters(in: NSCharacterSet.whitespaces)

//stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())

// Also remove newlines
blogTitle = "  Swift Cookbook  \n".trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)

//: Uppercase

var company = "apple computer"
company = company.uppercased()

//: Capitalize/Title case

company = company.capitalized// capitalize every word
company = company.localizedCapitalized // capitalize every word localized


//: Lowercase

company = company.lowercased()

//: Loop Over Ever Character of String
for character in "hello world".characters {
    print(character)
}

//: String to Int
let aNumberStr = "10"
let anInt: Int? = Int(aNumberStr)

//: String to Double
let aDouble: Double? = Double(aNumberStr)

//: First letter
let aWord = "hello"
let firstLetter = aWord.characters.first
let lastLetter = aWord.characters.last
let x = aWord.characters.prefix(3)
String(x)

//: [Next](@next)
