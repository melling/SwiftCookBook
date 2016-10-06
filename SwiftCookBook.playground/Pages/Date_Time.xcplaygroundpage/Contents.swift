/*:
 Swift Cookbook Date/Time Functions
 Copy and Paste into a Swift Playground
 Version: 20151020.01
 - [h4labs Swift Cookbook](http://www.h4labs.com/dev/ios/swift_cookbook.html)
 
 Some ideas came from [Perl](http://pleac.sourceforge.net/pleac_perl/arrays.html) and [Python](http://pleac.sourceforge.net/pleac_python/datesandtimes.html) Pleacs.
 */

import Foundation

//: Current Date/Time

var aDate: Date
let now = Date() // Current Date/Time


//: Date from String
let microsoftDateStr = "1986-03-13" // year-month-day

// Set date format
var dateFmt = DateFormatter()
dateFmt.timeZone = NSTimeZone.default
dateFmt.dateFormat =  "yyyy-MM-dd"
microsoftDateStr


// Get Date for the given string
dateFmt.date(from: microsoftDateStr)
var microsoftIpoDate = dateFmt.date(from: microsoftDateStr)

print(microsoftIpoDate!)
microsoftIpoDate

//: Date Using Date Components
var components = DateComponents()
components.year = 1980
components.month = 12
components.day = 12


// Get Date given the above date components
var appleIpoDate = Calendar(identifier: .gregorian).date(from: components)

print(appleIpoDate!)

let ipoDates = [appleIpoDate, microsoftIpoDate]
ipoDates.first


func iPhoneBirthday() -> Date {
    
    var components = DateComponents()
    components.year = 2007
    components.month = 1
    components.day = 9
    components.hour = 9
    components.minute = 41
    components.second = 0
    
    let aDate = Calendar(identifier: .gregorian).date(from: components)
    
    return aDate!
}

let bDay = iPhoneBirthday()

//: Standard Date Formats
/*:
 # Standard Formats
 
 Short | Short | 1/9/07, 9:41 AM
 
 Short | Medium | 1/9/07, 9:41:00 AM
 
 Short | Long | 1/9/07, 9:41:00 AM EST
 
 Short | Full | 1/9/07, 9:41:00 AM Eastern Standard Time
 
 Medium | Short | Jan 9, 2007, 9:41 AM
 
 Medium | Medium | Jan 9, 2007, 9:41:00 AM
 
 Medium | Long | Jan 9, 2007, 9:41:00 AM EST
 
 Medium | Full | Jan 9, 2007, 9:41:00 AM Eastern Standard Time
 
 Long | Short | January 9, 2007 at 9:41 AM
 
 Long | Medium | January 9, 2007 at 9:41:00 AM
 
 Long | Long | January 9, 2007 at 9:41:00 AM EST
 
 Long | Full | January 9, 2007 at 9:41:00 AM Eastern Standard Time
 
 Full | Short | Tuesday, January 9, 2007 at 9:41 AM
 
 Full | Medium | Tuesday, January 9, 2007 at 9:41:00 AM
 
 Full | Long | Tuesday, January 9, 2007 at 9:41:00 AM EST
 
 Full | Full | Tuesday, January 9, 2007 at 9:41:00 AM Eastern Standard Time
 
 
 
 */
func formatDates(aDate:Date) {
    
    let dateStyles:[DateFormatter.Style] = [.short, .medium, .long, .full]
    
    let styleNames = ["", "Short", "Medium", "Long", "Full"]
    let formatter = DateFormatter()
    for style in dateStyles {
        for style2 in dateStyles {
            formatter.dateStyle = style
            formatter.timeStyle = style2
            
            let dateString = formatter.string(from: aDate)
            let styleNames0 = "\(styleNames[Int(style.rawValue)]) | \(styleNames[Int(style2.rawValue)])"
            print("\(styleNames0) | \(dateString)")
        }
    }
}

formatDates(aDate: bDay)

// Get Date for the given string
dateFmt.date(from: microsoftDateStr)

//: Current Year

func year() -> Int {
    
    let date = Date()
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year], from: date)
    
    let year =  components.year
    
    return year!
}

//: Year/Month/Day returned as a tuple

func yearMonthDay(date:Date) -> (Int, Int, Int) {
    
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year, .month, .day], from: date)
    
    let year = components.year
    let month = components.month
    let day = components.day
    
    return (year!, month!, day!)
}


let (y,m,d) = yearMonthDay(date: Date())

//: Add leading zeros for month/day
print("The date is %d-%d-%d", y,m,d)

//: Day of Year
func dayOfYear() -> Int {
    let date = Date() // now
    let calendar = Calendar.current
    
    let day = calendar.ordinality(of: .day, in: .year, for: date)
    
    return day!
}

year()

dayOfYear()


//: Tomorrow
func tomorrow() -> Date {
    
    var dateComponents = DateComponents()
    
    dateComponents.setValue(1, for: .day);
    
    let now = Date()
    let tomorrow = Calendar.current.date(byAdding: dateComponents, to: now)
    
    return tomorrow!
}

tomorrow()

//: Yesterday
func yesterday() -> Date {
    
    var dateComponents = DateComponents()
    dateComponents.setValue(-1, for: .day) // -1 days
    
    let now = Date()
    let yesterday = Calendar.current.date(byAdding: dateComponents, to: now)
    return yesterday!
}
yesterday()


//: Day of Week

func dayOfWeek() -> Int {
    let weekday:Int
    
    let now = Date()
    
    let gregorian = Calendar(identifier: .gregorian)
    
    let x = gregorian.dateComponents([.weekdayOrdinal], from: now)
    gregorian.firstWeekday
    
    weekday = x.weekdayOrdinal!
    
    return weekday
}

dayOfWeek()

//: Last day of month

func lastDayOfMonth(_ aDate:Date) -> Date {
    
    let calendar = Calendar(identifier: .gregorian)
    var components = calendar.dateComponents([.year , .month , .day],
                                             from:aDate)
    //    components.month += 1 // Next month
    
    components.day = 0 // Set the day to zero to get last day of prior month
    
    let aDate = calendar.date(from: components)
    
    return aDate!
}

lastDayOfMonth(now)

func lastDaysOfMonthForYear(year:Int) -> [Date] {
    
    var result:[Date] = []
    
    var components = DateComponents()
    components.year = year
    components.day = 1
    
    for month in 1...12 {
        components.month = month
        
        let aDate = Calendar(identifier: .gregorian).date(from: components)
        
        let d = lastDayOfMonth(aDate!)
        result += [d]
    }
    return result
}

lastDaysOfMonthForYear(year: 2016)
//: Add n days - Can be positive or negative
func addDays(_ numDays:Int) -> Date {
    
    var dateComponents = DateComponents()
    dateComponents.setValue(numDays, for: .day) // -1 days
    
    let now = Date()
    let newDay = Calendar.current.date(byAdding: dateComponents, to: now)
    //    let newDay = Calendar.current.date(dateComponents, to: now, options: NSCalendar.Options(rawValue: 0))
    return newDay!
}

addDays(1)
addDays(-1)


//: Last Saturday

//: Date Difference: Number of days between two dates
func dateDiff(startDate:Date, endDate:Date) -> Int {
    let calendar = Calendar.current
    
    // Ignore hours/minutes/seconds
    let date1 = calendar.startOfDay(for: startDate)
    let date2 = calendar.startOfDay(for: endDate)
    //    let unit = [Calendar.Component.day]
    
    let components = calendar.dateComponents([.day], from: date1, to: date2)
    
    return abs(components.day!)
}

dateDiff(startDate: lastDayOfMonth(now), endDate: now)

//: Leap Year
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

isLeapYear(1900) // false
isLeapYear(2000) // true
isLeapYear(2015) // false
isLeapYear(2016) // true

//let now0 = Date()
//isLeapYear(now0)

isLeapYear() // Default parameter is Date()


//: Date from Int YYYYMMDD
func dateFromInt(_ date:Int) -> Date {
    
    let year = date / 10000
    let month = date % 10000 / 100
    let day = date % 100
    
    var components = DateComponents()
    components.year = year
    components.month = month
    components.day = day
    
    let aDate = Calendar(identifier: .gregorian).date(from: components)
    
    return aDate!
}

let d0 = dateFromInt(20160111)

//: Date to Int YYYYMMDD
func intFromDate(_ date:Date) -> Int {
    
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year, .month, .day], from: date)
    
    let year = components.year
    let month = components.month
    let day = components.day
    
    let intDate = year! * 10000 + month! * 100 + day!
    return intDate
    
}

let d1 = intFromDate(Date())

//: Parsing Date Strings

//: Formatted Date Strings
