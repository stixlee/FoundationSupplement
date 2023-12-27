//
//  File.swift
//  
//
//  Created by Michael Lee on 12/27/23.
//

import Foundation

public extension Date {
    
    var dayString: String {
        let weekdays = [
            "Sunday",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday"
        ]
        
        let calendar = Calendar.current.component(.weekday, from: self)
        return weekdays[calendar - 1]
    }
}
