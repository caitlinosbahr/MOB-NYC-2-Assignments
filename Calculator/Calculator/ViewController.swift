//  ViewController.swift
//  Calculator
//
//  Created by Caitlin Osbahr on 3/26/15.
//  Copyright (c) 2015 Caitlin Osbahr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calcLabel: UILabel!
    @IBOutlet weak var operationLabel: UILabel!
    
    var number = Float()
    var operation : String?
    var result = Float()
    var previousNumber : Float?
    var shouldErase = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberTapped(sender: UIButton) {
        
        var numberKey = Float(sender.titleLabel!.text!.toInt()!)
        
        if  shouldErase {
            previousNumber = number
            number = 0
            shouldErase = false
        }
        
        number = number * 10.0 + numberKey
        calcLabel.text? = "\(number)"
    }
    
    @IBAction func operationTapped(sender: UIButton) {
        
        var currentOperation = sender.titleLabel!.text!
        operationLabel.text = "\(currentOperation)"
        
        if previousNumber == nil {
            previousNumber = number
            number = 0
            operation = currentOperation
        } else if operation != nil {
            number = applyOperation( previousNumber!, op: operation!, secondNumber: number)
            operation = currentOperation
            calcLabel.text? = "\(number)"
            shouldErase = true
            
        }
    }
    
    func applyOperation(firstNumber: Float, op: String, secondNumber: Float) -> Float {
        switch op {
        case "x":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        default:
            return 0
        }
    }
    
    @IBAction func clear(sender: AnyObject) {
        number = 0
        result = 0
        operation = ""
    }
    
}