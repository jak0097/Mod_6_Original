//
//  LoanLogic.swift
//  Mod_6_Original
//
//  Created by Jeff Kohl on 6/26/24.
//

import Foundation

struct ConverterLogic {
    
    var USDString = "1"
    var USD = 2
    var userInputError = "Temp"
    
    var euroConversion = true
    var yenConversion = true
    var kroneConversion = true
    var canadianConversion = true
    
    mutating func setEuroSwitch(_ switchValue: Bool) {
        if switchValue {
            euroConversion = true
        } else {
            euroConversion = false
        }
    }
    
    mutating func setYenSwitch(_ switchValueYen: Bool) {
        if switchValueYen {
            yenConversion = true
        } else {
            yenConversion = false
        }
    }
    
    mutating func setKroneSwitch(_ switchValueKrone: Bool) {
        if switchValueKrone {
            kroneConversion = true
        } else {
            kroneConversion = false
        }
    }
    
    mutating func setCanadianSwitch(_ switchValueCanadian: Bool) {
        if switchValueCanadian {
            canadianConversion = true
        } else {
            canadianConversion = false
        }
    }
    
    mutating func calculateLoanAmount(USDIn: String) -> (String, String, String, String, String) {
        
        var USDInput = USDIn

        var euroReturn: Double
        var euroReturnString: String
        
        var yenReturn: Double
        var yenReturnString: String
        
        var kroneReturn: Double
        var kroneReturnString: String
        
        var canadianReturn: Double
        var canadianReturnString: String
        
        if Int(USDIn) != nil {
            USDString = USDIn
            userInputError = "Okay"
        } else {
            userInputError = "Not an integer, please type a valid input."
        }
        
        if userInputError == "Not an integer, please type a valid input." {
            return ("Enter valid integer.", "Enter valid integer.", "Enter valid integer.", "Enter valid integer.", "Enter valid integer.")
        }
        
        if euroConversion {
            USD = Int(USDString) ?? 0
            euroReturn = Double(USD) * 0.95
            euroReturn = round(euroReturn * 100) / 100.0
        } else {
            euroReturn = -1
        }
        euroReturnString = String(euroReturn)
        
        if yenConversion {
            USD = Int(USDString) ?? 0
            yenReturn = Double(USD) * 100
            yenReturn = round(yenReturn * 100) / 100.0
        } else {
            yenReturn = -1
        }
        yenReturnString = String(yenReturn)
        
        if kroneConversion {
            USD = Int(USDString) ?? 0
            kroneReturn = Double(USD) * 10
            kroneReturn = round(kroneReturn * 100) / 100.0
        } else {
            kroneReturn = -1
        }
        kroneReturnString = String(kroneReturn)
        
        if canadianConversion {
            USD = Int(USDString) ?? 0
            canadianReturn = Double(USD) * 1.2
            canadianReturn = round(canadianReturn * 100) / 100.0
        } else {
            canadianReturn = -1
        }
        canadianReturnString = String(canadianReturn)
            
        return (USDInput, euroReturnString, yenReturnString, kroneReturnString, canadianReturnString)
    }
       
}
