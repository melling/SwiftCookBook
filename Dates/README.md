
## Swift Date Functions

- [Basics](README.md) | [Arrays](array.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) | [Strings](strings.md) | [Functional Swift](functional.md)

[Day of Year](#day-of-Year) | [Is Leap Year](#is-Leap-Year) | [Last Day Of Month](#last-Day-Of-Month) | [Tomorrow](#tomorrow) | [Yesterday](#yesterday)

### Day of Year
Return the current day of the year.

- Jan 1 returns 1
- Feb 2 returns 32

#### Example
```swift
let d = dayOfYear()
print("Day Of Year: \(d)")
```

[dayOfYear() Source](dayOfYear.swift)

### Last Day Of Month

#### Example
```swift
// Last day of current month
let now = Date()
let day = lastDayOfMonth(now)
```

```swift
// Last day of each month for given year
let x = lastDayOfMonthList(year: 2016)
x.forEach({print("\($0)")})
```

> swift lastDayOfMonth.swift # run from shell

[lastDayOfMonth() Source](lastDayOfMonth.swift)

### Is Leap Year

#### Example

```swift
let isY1900 = isLeapYear(1900) // false
let isY2000 = isLeapYear(2000) // true
let isY2015 = isLeapYear(2015) // false
let isY2016 = isLeapYear(2016) // true
let isY2020 = isLeapYear(2020) // true
```
#### Example
```swift
let isThisYear = isLeapYear() // Default parameter is Date()
print("This year is a leap year: \(isThisYear)")
```

> swift isLeapYear.swift

[isLeapYear() Source](isLeapYear.swift)

### Tomorrow
Calculate tomorrow's date

> swift tomorrow.swift

[tomorrow() Source](tomorrow.swift)

### Yesterday
Calculate yesterday's date

[yesterday() Source](yesterday.swift)

