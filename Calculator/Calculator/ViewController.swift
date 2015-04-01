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
    
    var number : Float?
    var operation : String?
    var result : Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberTapped(sender: UIButton) {
        
        var numberKey = Float(sender.titleLabel!.text!.toInt()!)
        
        if number == nil {
            number = 0
        }
        
        number! = number! * 10.0 + numberKey
        calcLabel.text? = "\(number!)"
    }
    
    @IBAction func operationTapped(sender: UIButton) {
        
        var currentOperation = sender.titleLabel!.text!
        operationLabel.text = "\(currentOperation)"
        
        if result == nil {
            result = number
            number = nil

            if currentOperation != "=" {
                operation = currentOperation
            }
        } else if operation != nil && number != nil {
            result = applyOperation( result!, op: operation!, secondNumber: number!)
            calcLabel.text? = "\(result!)"
            number = nil
            if currentOperation != "=" {
                
                operation = currentOperation
            }
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
        result = nil
        operation = nil
        calcLabel.text? = "0"
        operationLabel.text = ""
    }
    
}