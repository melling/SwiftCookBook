[Basics](README.md) | [Arrays](array.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) | [Sorting](sorting.md) | [Strings](strings.md) | [Functional Swift](functional.md)

## Sorting

```swift
let companies = ["Microsoft", "Google", "Apple", "Amazon", "Intel"].sorted()

let reversed = companies.sorted(by: {$1 < $0})

let reversedNames = companies.sorted(by: >) // even simpler reverse

```

###
### Sort by Word Length

```swift
// longest words first: ["orange","black", "white", "blue", "red"]
["red", "orange", "blue", "black", "white"].sorted(by: {$0.count > $1.count}) 
```

### Sort Classes

```swift
/*
 Comparable: Equality ==
 Comparable: < for sorted
 CustomStringConvertible: Provide description variable for print() 
 
 Could use value type struct:
    struct Person: Equatable, Comparable, CustomStringConvertible {}

 */
public class Person: Equatable, Comparable, CustomStringConvertible {
    
    let first:String
    let last:String
    public var description:String { "\(first) \(last)" }
        
    init(first:String, last:String) {
        self.first = first
        self.last = last
    }
    

    public static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.first == rhs.first && lhs.last == rhs.last
    }
    
    public static func < (lhs: Person, rhs: Person) -> Bool {
        if lhs.last != rhs.last {
            return lhs.last < rhs.last
        }
        return lhs.first < rhs.first
    }
}

let mathematicians = [Person(first: "Isaac", last: "Newton"),
          Person(first: "Blaise", last: "Pascal"),
          Person(first: "Daniel", last: "Bernoulli"),
          Person(first: "Pierre-Simon", last: "Laplace"),
          Person(first: "Johann", last: "Bernoulli"),
          
]

let sortedMath = mathematicians.sorted()
for w in sortedMath {
    print("\(w)")
    
}
```

###

```swift

```

###

```swift

```

