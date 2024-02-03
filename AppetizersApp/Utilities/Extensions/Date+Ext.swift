//AppetizersApp
//Date+Ext.swift

//Created by: Kareem on 11/13/23                      
//Copyright (c) 2023 Kareem

import Foundation

extension Date {
    
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundrdYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    }
}
