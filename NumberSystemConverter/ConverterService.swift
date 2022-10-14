//
//  ConverterService.swift
//  NumberSystemConverter
//
//  Created by Данил on 14.10.2022.
//

import Foundation

class ConverterService {
    
    let charTonumbers: [Character: Int] = [
        "0": 0,
        "1": 1,
        "2": 2,
        "3": 3,
        "4": 4,
        "5": 5,
        "6": 6,
        "7": 7,
        "8": 8,
        "9": 9,
        "A": 10,
        "B": 11,
        "C": 12,
        "D": 13,
        "E": 14,
        "F": 15
    ]
    
    let numbersToChar: [Int:String] = [
        0: "0",
        1: "1",
        2: "2",
        3: "3",
        4: "4",
        5: "5",
        6: "6",
        7: "7",
        8: "8",
        9: "9",
        10: "A",
        11: "B",
        12: "C",
        13: "D",
        14: "E",
        15: "F"
    ]
    
    func convert(from number: String, fromSystem: Int, toSystem: Int) -> String {
        guard fromSystem != toSystem else { return number }
        
        var result: Double = 0
        var base: Double = 0
        
        // From fromSystem to 10
        
        number.reversed().forEach {
            let realNumber = Double(charTonumbers[$0]!)
            result += realNumber * pow(Double(fromSystem), base)
            base += 1
        }
        
        // From 10 to toSystem
        
        var duplicateResult = Int(result)
        var resultString = ""
        
        while duplicateResult > 0 {
            resultString += numbersToChar[duplicateResult % toSystem] ?? ""
            duplicateResult /= toSystem
        }
        
        return String(resultString.reversed())
    }
    
}
