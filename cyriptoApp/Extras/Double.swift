//
//  Double.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 17.07.2022.
//

import Foundation

extension Double {
    
    func toString() -> String {
        let number: NSNumber? = NSNumber(value: self)
        if let number = number{
            return "\(number)"
        }
        return ""
    }
    
    func sinirla2basamak() -> NumberFormatter{
        var formatter = NumberFormatter()
        //formatter.numberStyle = .percent
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }
    
    func sinirla6basamak() -> NumberFormatter{
        var formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 6
        formatter.minimumFractionDigits = 2
        return formatter
    }
    
    func sinirla6basamakString() -> String{
        var number = NSNumber(value: self)
        return sinirla6basamak().string(from: number) ??  "0.00$"
    }

    
    func numberString () -> String {
        return String(format: "%.2f", self)
        
    }
    
    func yuzdeString () -> String {
        return numberString() + "%"
        
    }
    
}
