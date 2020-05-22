//
//  DateEx.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/05/22.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
    
}
