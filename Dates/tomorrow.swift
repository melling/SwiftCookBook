import Foundation

/*
 swift tomorrow.swift
*/
func tomorrow() -> Date {
    
    var dateComponents = DateComponents()
    
    dateComponents.setValue(1, for: .day);
    
    let now = Date()
    let tomorrow = Calendar.current.date(byAdding: dateComponents, to: now)
    
    return tomorrow!
}

let aDate = tomorrow()
print("tomorrow: \(aDate)")