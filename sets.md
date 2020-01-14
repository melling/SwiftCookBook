##  Swift Sets


### Two ways to create

```swift
var techTickerSet = Set<String>() // Empty

var financialTickerSet = Set<String>(["GS", "MS", "BAC"])


```


### Add values to set

```swift
for t in ["AAPL", "MSFT", "INTC", "GOOG"] {

    techTickerSet.insert(t)

}
```

### Insert Value if it is not in the set

```swift
if !techTickerSet.contains("BBRY") {
    techTickerSet.insert("BBRY")
}
```


```swift
let nameSet = Set(["Apple", "Microsoft", "Intel", "Alphabet"])

nameSet.first

techTickerSet.count

techTickerSet.contains("AAPL")
```


### Number of elements in Set/Size

```swift
allTickers.count
```


### Is Set Empty

```swift
allTickers.isEmpty
```



### Set Contains Value

```swift
techTickerSet.contains("BBRY")
```

### Remove Element

```swift
techTickerSet.remove("BBRY")
```

### Disjoint Set

```swift
techTickerSet.isDisjoint(with: financialTickerSet)
```


### Set Union

```swift
var allTickers = techTickerSet.union(financialTickerSet)

let all = set1 + set2 + set3
```


### Set Intersection

```swift

```


### Superset and Subset

```swift

allTickers.isSuperset(of: techTickerSet)

techTickerSet.isSubset(of: allTickers)
```


### Remove All Elements 

```swift
allTickers.removeAll()

```
