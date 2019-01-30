//
//  ViewController.swift
//  mobile_game2
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 jeff.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var x : Int = 0
    var y : Int = 0
    var result : Double = 0
    var ope : Character = "x"
    
    //UI element variables
    @IBOutlet weak var xText : UILabel!
    @IBOutlet weak var yText : UILabel!
    @IBOutlet weak var resultText : UILabel!
    @IBOutlet weak var opeText : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupStarterValue()
    }
    
    func setupStarterValue() {
        x = 888
        y = 888
        result = 88888888
        ope = "?"
        changeNumberText()
    }
    
    
    func randomNumber() -> Int {
        return Int.random(in: 0...999)
    }
    
    func randomOperatorNumber() -> Int {
        return Int.random(in: 0...3)
    }
    
    func decideOperation(x : Double, y : Double, opeNum : Int) -> Double {
        switch opeNum {
        case 0:
            return sum(x: x, y: y)
        case 1:
            return subtract(x: x, y: y)
        case 2:
            return multiply(x: x, y: y)
        case 3:
            return divide(x: x, y: y)
        default :
            return sum(x: x, y: y)
        }
    }
    
    func decideOperatorString(opeNum : Int) -> Character {
        switch opeNum {
        case 0:
            return "+"
        case 1:
            return "-"
        case 2:
            return "*"
        case 3:
            return "/"
        default :
            return "+"
        }
    }
    
    func sum(x : Double, y : Double) -> Double {
        return x + y
    }
    
    func subtract(x : Double, y : Double) -> Double {
        return x - y
    }
    
    func multiply(x : Double, y : Double) -> Double {
        return x * y
    }
    
    func divide(x : Double, y : Double) -> Double {
        return x / y
    }
    
    @IBAction func onClickRandom() {
        
        x = randomNumber()
        y = randomNumber()
        let opeRan = randomOperatorNumber()
        ope = decideOperatorString(opeNum: opeRan)
        result = decideOperation(x: Double(x), y: Double(y), opeNum: opeRan)
        
        print("x: \(x)")
        print("y: \(y)")
        print("operator Number: \(opeRan)")
        print("result: \(result)")
        print("string: \(x) \(decideOperatorString(opeNum: opeRan)) \(y) = \(result)")
        
        changeNumberText()
        
    }
    
    func changeNumberText() {
        xText.text = String(x)
        yText.text = String(y)
        resultText.text = String(result)
        opeText.text = String(ope)
    }
}

