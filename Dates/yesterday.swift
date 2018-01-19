import Foundation

func yesterday() -> Date {
    
    var dateComponents = DateComponents()
    dateComponents.setValue(-1, for: .day) // -1 days
    
    let now = Date()
    let yesterday = Calendar.current.date(byAdding: dateComponents, to: now)
    return yesterday!
}

let aDate = yesterday()
print("yesterday: \(aDate)")
