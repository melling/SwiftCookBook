import Foundation

func lastDayOfMonth(_ aDate:Date) -> Date {
    
    let calendar = Calendar(identifier: .gregorian)
    var components = calendar.dateComponents([.year , .month , .day],
                                             from:aDate)

    components.month = components.month! + 1 // Next month
    
    components.day = 0 // Set the day to zero to get last day of prior month
    
    let aDate = calendar.date(from: components)
    
    return aDate!
}

let now = Date()
let day = lastDayOfMonth(now)

print("Last day of this month: \(day)\n")

/*
 Give a year, return the last day of each month
*/
func lastDayOfMonthList(year:Int) -> [Date] {
    
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

let x = lastDayOfMonthList(year: 2016)
x.forEach({print("\($0)")})
