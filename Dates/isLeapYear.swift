import Foundation

func isLeapYear(_ year: Int) -> Bool {
    
    let isLeapYear = ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
    
    
    return isLeapYear
}

func isLeapYear(date: Date = Date()) -> Bool {
    
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year], from: date)
    
    let year = components.year
    return isLeapYear(year!)
}

let isY1900 = isLeapYear(1900) // false
let isY2000 = isLeapYear(2000) // true
let isY2015 = isLeapYear(2015) // false
let isY2016 = isLeapYear(2016) // true
let isY2020 = isLeapYear(2020) // true

//let now0 = Date()
//isLeapYear(now0)

let isThisYear = isLeapYear() // Default parameter is Date()
print("This year is a leap year: \(isThisYear)")
