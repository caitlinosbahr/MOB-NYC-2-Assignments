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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var calcLabel: UILabel!
    
    
    @IBAction func numberTapped(sender: UIButton) {
        // this function replaces the number. need it to append
//        number = sender.titleLabel!.text!.toInt()!
//        calcLabel.text = "\(number)"
        
        
        // this concatenates each number by converting it into a string while you type
        var newNumber = sender.titleLabel!.text!
        var numberAsString = "\(number)"
        
        if number == 0 {
            numberAsString = newNumber
        } else {
            numberAsString += newNumber
        }
        
        calcLabel.text = numberAsString
        number = numberAsString.toInt()! //convert string into integer we can use operations

    }
    
    
    @IBAction func operationTapped(sender: UIButton) {
        operation = sender.titleLabel!.text! as String
        //need to add something here to "pause" the string concatenation
    }
    

    //For some reason this is borked right now
    @IBAction func equals(sender: AnyObject) {
        
        if operation == "+" {
            result = result + number
        } else if operation == "-" {
            result = result - number
        } else if operation == "x" {
            result = result * number
        } else if operation == "/" {
            result = result / number
        }
        
        calcLabel.text = "\(result)"
    }


    @IBAction func clear(sender: AnyObject) {

        number = 0
        result = 0
        operation = "="
        calcLabel.text = "\(result)"
    }
    
    
}

