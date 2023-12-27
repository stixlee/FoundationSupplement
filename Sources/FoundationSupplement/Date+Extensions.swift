//
//  File.swift
//  
//
//  Created by Michael Lee on 07/27/22.
//

import Foundation

public extension Date {
    
    var isWeekday: Bool {
        return weekdays.contains(self.dayString)
    }
    
    var isWeekEnd: Bool {
        return weekendDays.contains(self.dayString)
    }

    var yyyyMMdd : String {
        return self.toString()
    }
    
    var ddMMMyyyy : String {
        return self.toString(format: "dd MMM yyyy")
    }
    
    var dayString: String {
        let calendar = Calendar.current.component(.weekday, from: self)
        return daysOfWeek[calendar - 1]
    }
    
    func toString(format: String = "yyyy-MM-dd") -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

private extension Date {
    var daysOfWeek: [String] {
        [
            "Sunday",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday"
        ]
    }
    
    var weekdays: [String] {
        [
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday"
        ]
    }
    
    var weekendDays: [String] {
        [
            "Sunday",
            "Saturday"
        ]
    }


}
