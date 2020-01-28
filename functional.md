## Functional Swift


### map

```swift
[1,2,3].map {$0 * 2}
```

### filter

```swift

let retestQuestions = questionList.filter {!$0.isAnsweredCorrectly}
```

### forEach

```swift
[pronounView, answerWellView, answerConjugationView].forEach (view.addSubview)
```

### reduce

```swift
[1,2,3].reduce(0, +)
[1,2,3].reduce(1, *)
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
