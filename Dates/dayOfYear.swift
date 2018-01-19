import Foundation

func dayOfYear() -> Int {
    let date = Date() // now
    let calendar = Calendar.current
    
    let day = calendar.ordinality(of: .day, in: .year, for: date)
    
    return day!
}

let d = dayOfYear()
print("Day Of Year: \(d)")