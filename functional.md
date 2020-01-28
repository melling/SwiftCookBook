## Functional Swift


### map

```swift
[1,2,3].map {$0 * 2}
```

### filter

```swift
let evens = [1,2,3,4,5,6,7,8,9].filter {$0 % 2 == 0} // isEven
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

```

### take

```swift

```

### drop/dropWhile

```swift

```

### zip

```swift

```

### Combining

```swift
arr.filter {}.compactMap {}
```
