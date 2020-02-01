[Basics](README.md) | [Arrays](array.md) | [Colors](color.md) | [Date and Time](Dates/README.md) | [Dictionaries](dictionary.md) | [Sets](sets.md) | [Sorting](sorting.md) | [Strings](strings.md) | [Functional Swift](functional.md)

## Color

### Standard UIColors
```swift
import UIKit

/*: Standard UIColors
 black, blue, brown, clear, cyan, darkGray, gray, green, lightGray, magenta, orange, purple, red, white, yellow
 */
let blackColor = UIColor.black
let whiteColor = UIColor.white
let redColor = UIColor.red
let blueColor = UIColor.blue
let greenColor = UIColor.green
let clearColor = UIColor.clear
```

### Standard CGColors - Core Graphics

```swift 
let blackCGColor = UIColor.black.cgColor
let whiteCGColor = UIColor.white.cgColor
let redCGColor = UIColor.red.cgColor
let blueCGColor = UIColor.blue.cgColor
let greenCGColor = UIColor.green.cgColor
let clearCGColor = UIColor.clear.cgColor
```

### Gray

```swift
let gray:CGFloat = 255.0 // 0=black to 255=white
let aGrayColor = UIColor(red: gray/255.0, green:gray/255.0, blue:gray/255.0, alpha:1)
```

### rgba

```swift
let color = UIColor(red: 200/255.0, green:100/255.0, blue:100/255.0, alpha:1)

let cgColor = UIColor(red: 200/255.0, green:100/255.0, blue:100/255.0, alpha:1).cgColor // Use with Core Graphics
var red, green,blue: CGFloat

red = 100
green = 225
blue = 101

UIColor(red: red/255.0, green:green/255.0, blue:blue/255.0, alpha:1)
```

### Hue

```swift
let colorWithHue = UIColor(hue:0.625, saturation:0.0, brightness:0.85, alpha:1.0)
```


### Color from Pattern

```
//let image = UIImage(named:"texture.png")
//let colorPattern = UIColor(patternImage: image!)
//if let image = UIImage(named:"texture.png") {
//    let colorPattern = UIColor(patternImage: image)
//}
```
