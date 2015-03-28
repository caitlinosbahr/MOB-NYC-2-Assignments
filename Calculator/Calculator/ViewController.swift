//
//  ViewController.swift
//  Calculator
//
//  Created by Caitlin Osbahr on 3/26/15.
//  Copyright (c) 2015 Caitlin Osbahr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = Int()
    var operation = ""
    var result = Int()
    var numberAsString = String()
    var canConcatenateNumber = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var calcLabel: UILabel!
    @IBOutlet weak var operationLabel: UILabel!
    
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
    
    // something funny is going on here right now. the operation doesn't seem to remember the first number.
    @IBAction func operationTapped(sender: UIButton) {
        canConcatenateNumber = false
        operation = sender.titleLabel!.text! as String
        operationLabel.text = "\(operation)"
        
        if operation == "+" {
            result = result + number
        } else if operation == "-" {
            result = result - number
        } else if operation == "x" {
            result = result * number
        } else if operation == "/" {
            result = result / number
        }
    }

    @IBAction func equals(sender: AnyObject) {
        canConcatenateNumber = false
        calcLabel.text = "\(result)"
    }


    @IBAction func clear(sender: AnyObject) {
        canConcatenateNumber = false
        number = 0
        result = 0
        calcLabel.text = "\(result)"
        operationLabel.text = ""
    }
    
    
}

