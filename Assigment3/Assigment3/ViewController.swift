//
//  ViewController.swift
//  Assigment3
//
//  Created by Iryna Batvina on 12/10/17.
//  Copyright © 2017 Iryna Batvina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Block 1")
        let maxValue = getMaxValue(var1: 11, var2: 6)
        print("0. Max value =", maxValue)
        
        let result_2 = getSquareOrCubeOfNumber(var1: 2, isSquare: true)
        print("1.1. Square =", result_2)
        
        let result_3 = getSquareOrCubeOfNumber(var1: 2, isSquare: false)
        print("1.2. Square =", result_3)
        
        print("2.1. Get numbers:", getNumbersUp(numberFrom: 5))
        print("2.2. Get numbers:", getNumbersDown(numberFrom: 5))
        
        print("3.1. Deliteli 6:", getAllDeliteli(number: 6))
        print("3.2. Deliteli 28:", getAllDeliteli(number: 28))
        print("3.3. Deliteli 496:", getAllDeliteli(number: 496))
        print("3.4. Deliteli 8128:", getAllDeliteli(number: 8128))
        
        
        print(" ")
        print("Block 2")
        let priceNow = getManhatentPercent(price: 24, yearStart: 1826, yearEnd: 2017)
        print("1. Manheten now = \(priceNow)")
        
        let money = getSumma(stipendiya: 20, rashody: 30)
        print("2. Nuzhno dopolnitelno deneg (stipendiya = 20, rashody = 30): \(money)")
        
        let month = getMonth(nakopleniya: 100, stipendiya: 20, rashody: 30)
        print("3. Months (nakopleniya = 100, stipendiya = 20, rashody = 30): \(month)")
        
        print("4.1. Revers number (51) = \(getReversedNumber(number: 51))")
        print("4.2. Revers number (321) = \(getReversedNumber(number: 321))")
        print("4.3. Revers number (5898) = \(getReversedNumber(number: 5898))")
        print("4.4. Revers number (654321) = \(getReversedNumber(number: 654321))")
    }
    
    func getMaxValue(var1: Int, var2: Int) -> Int {
        if (var1 > var2) {
            return var1
        } else {
            return var2
        }
    }
    
    func getSquareOrCubeOfNumber(var1: Int, isSquare: Bool) -> Int {
        var result = 0;
        if isSquare {
            result = var1 * var1;
        } else {
            result = var1 * var1 * var1;
        }
        
        return result;
    }
    
    func getNumbersUp (numberFrom: Int) -> String {
        var number = 0
        var result: String = ""
        while number < numberFrom {
            result += String(number)
            result += ", "
            number = number + 1
        }
        result += String(numberFrom)
        
        return result
    }
    
    func getNumbersDown (numberFrom: Int) -> String {
        var number = numberFrom
        var result: String = ""
        while number > 0 {
            result += String(number)
            result += ", "
            number = number - 1
        }
        result += String(0)
        
        return result
    }
    
    func getAllDeliteli(number: Int) -> String {
        var result = ""
        var i = 0
        
        while i < number - 1 {
            i = i + 1
            if number % i == 0 {
                result += String(i)
                result += ", "
            }
        }
        
        result.remove(at: result.index(before: result.endIndex))
        result.remove(at: result.index(before: result.endIndex))
        
        return result
    }
    
    func getManhatentPercent(price: Float, yearStart: Int, yearEnd: Int) -> Float {
        var result = price
        var i = yearStart
        while (i < yearEnd) {
            result = result + result * 0.06
            i = i + 1
        }
        
        return result
    }
    
    func getSumma(stipendiya: Double, rashody: Double, month: Int = 10) -> Double {
        var result: Double = 0;
        
        let allStipendiya = stipendiya * Double(month)
        var allRashody = rashody
        var totalRashody = allRashody
        for _ in 1...month {
            allRashody = allRashody + allRashody * 0.03
            totalRashody = totalRashody + allRashody
        }
        let res = totalRashody - allStipendiya
        result = Double(round(100 * res) / 100)
        
        return result
    }
    
    func getMonth(nakopleniya: Double, stipendiya: Double, rashody: Double) -> Int {
        var result = 0
        var newNakopleniya = nakopleniya
        var newRashody = rashody
        while newNakopleniya + stipendiya - newRashody >= newRashody - stipendiya {
            result = result + 1
            newNakopleniya = newNakopleniya + stipendiya - rashody
            newRashody = getNewRashody(rashody: newRashody)
        }
        
        return result
    }
    
    func getNewRashody(rashody: Double) -> Double {
        return rashody + rashody * 0.03
    }
    
    func getReversedNumber(number: Int) -> String {
        var result = ""
        if (number >= 10) {
            result = String(number)
            result = String(Array(result).reversed())
        }
        
        return result
    }

}

