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
    
    var number = Int()
    var operation = "="
    var result = Int()
    var numberAsString = String()
    var canConcatenateNumber = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberTapped(sender: UIButton) {
        // concatenates each number by using strings
        var newNumber = sender.titleLabel!.text!

        if canConcatenateNumber == true {
            numberAsString += newNumber
        } else {
            numberAsString = newNumber
        }
        
        canConcatenateNumber = true
        calcLabel.text = numberAsString
        number = numberAsString.toInt()! // converts string into integer we can use operations
    }
    
    @IBAction func operationTapped(sender: UIButton) {
        
        /*
        if operation == "+" {
            result = result + number
        } else if operation == "-" {
            result = result - number
        } else if operation == "x" {
            result = result * number
        } else if operation == "/" {
            result = result / number
        }
        */
        
        operation = sender.titleLabel!.text! as String
        operationLabel.text = "\(operation)"
        
        switch operation {
            case "=":
                result = number //this does weird things and if you hit the = twice in a row, changes the result to the last number you put instead of doing the previous function again. how do you make it repeat the same operation again?
            case "+":
                result = result + number
            case "-":
                result = result - number
            case "x":
                result = result * number
            case "/":
                result = result / number //doesn't show decimal points – change to Float?
            default:
                operationLabel.text = ""
        }
        
        calcLabel.text = "\(result)"
        canConcatenateNumber = false
    }

    @IBAction func clear(sender: AnyObject) {
        canConcatenateNumber = false
        number = 0
        result = 0
        operation = ""
    }

}