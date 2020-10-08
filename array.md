[Basics](README.md) | [Arrays](array.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) | [Sorting](sorting.md) | [Strings](strings.md) | [Functional Swift](functional.md)

## Swift Arrays/Lists


### Array Creation

```swift
var anArray = ["one", "two", "three","one"]  // Mutable

let anImmutableArray = ["four", "five"] // Immutable

let numbers = Array(1...10) // 1 through 10

let numbers9 = Array(1..<10) // 1 through 9

let numbers0_9 = [Int](0..<10)
let tens:[Int] = (10...100).filter{$0 % 10 == 0} // 10,20,...,100

var zeroArray = Array(repeating: 0, count: 100)
var strArray = Array(repeating: "", count: 100)
//let total = numbers0_9.reduce(0, +)

```


### Multidimensional Array
```swift
let multDim:[[Int]] = [[1,2,3], [4,5,6], [7,8,9]]
```

### Add Value

```swift
let arr2 = anArray + ["Swift"] // merge the two arrays 
anArray.append("x") // Add value to the end,  mutating array
```

###  First element of array

```swift
anArray.first // a Swift solution. nil if empty

anArray[0] // Classic solution. Error if empty
```


###  Last element of array

```swift
anArray.last // a Swift solution. nil if empty

anArray[anArray.count-1] // Classic solution. Error if empty
```


### Empty Array

```swift
var emptyArray:[String] = []

if emptyArray.isEmpty {

    print("Empty Array")

}


emptyArray.first // Returns nil

emptyArray.last  // Returns nil
```



### Does value exist in array?

```swift
if anArray.contains("three") {

    print("Array contains value")

}
```


### removeAll(where predicate: {})

Remove all matching elements in O(n) time.


###  How to filter array to get unique items?

 Create a Set then build array from it.  Set guarantees uniqueness
```swift
var aSet:Set<String> = []

anArray.forEach{aSet.insert($0)} // Could do this: aSet = Set(anArray)

aSet.count

anArray = Array(aSet)

anArray.count
```



### Merge arrays

```swift
// Just like prior solution.  Uses Set's union function

// Also skip closure



anArray = ["one", "two", "three","one"]

aSet = Set(anArray)

aSet.formUnion(anImmutableArray)

aSet.count

anArray = Array(aSet)

anArray.count
```



### Sort Array

```swift
anArray = ["one", "two", "three","one"]

let sortedArray = anArray.sorted() // Returns a new sorted array

let sortedArrayReverse =  anArray.sorted(by: >) // Reverse order



sortedArray

sortedArrayReverse

anArray


anArray.sort() // Update the array in place

anArray

anArray.removeLast()

anArray.removeFirst()
```



### Find the index of an element in an Array
```swift
anArray = ["one", "two", "three","one"]

anArray.index(of: "two")
```




###  indexOf() can also be used to search an array

```swift
let aNumericArray = [1, 2, 10, 20, 100]

let x = aNumericArray.index(where: {$0 > 10}) // Find the index of first value greater than 10

print(x ?? 0)
```



### Array.reduce


 A series of functions that use the Array.reduce method

 anArray.reduce(initialValue) { (finalValue, elementValue) in PERFORM_CALCULATION }

 
1. finalValue is assigned initialValue

2. Calculation is performed

3. finalValue is returned for assignment



### Sum values in an Array

```swift
let smallArray = Array(1...3)

let arraySum = smallArray.reduce(0) { (total, i) in total + i }

arraySum
```



### Average value of array items

```swift

let average = arraySum / smallArray.count
```




### Maximum Value in an Array

```swift
let maxNum = smallArray.reduce(0) { (total, i) in max(total, i) } // Decrease initial value 0 if max is less than that

maxNum
```




### Minimum Value in an Array

```swift
let minNum = smallArray.reduce(100) { (total, i) in min(total, i) } // Increase initial value 100 if min is greater than that

minNum
```



###  Product

```swift

let tmpArray0 = Array(1...5)

let product = tmpArray0.reduce(1) { (total, i) in total * i }

product

```


### Summation and Product without closure


```swift
let tmpSummation = Array(1...100).reduce(0, +)

let tmpProduct = Array(1...10).reduce(1, *)
```


###  Reverse Array with reduce()


```swift
let reverseIntArray = Array(1...10).reduce([Int](), { [$1] + $0 })



let reverseStringArray = ["dog","cat", "bird", "rabbit"].reduce([String](), { [$1] + $0 })

reverseStringArray
```

