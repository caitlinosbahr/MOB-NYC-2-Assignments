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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var calcLabel: UILabel!
    
    
    //How do you append another number? Right now this just replaces the current number
    @IBAction func numberTapped(sender: UIButton) {
        number = sender.titleLabel!.text!.toInt()!
        
        calcLabel.text = "\(number)"
    }
    
    
    @IBAction func operationTapped(sender: UIButton) {
        operation = sender.titleLabel!.text! as String //Should I add a label that shows the current operation somewhere to make sure this is doing the right thing?
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
        } else {
            result = number //Not sure this is really what you want here?
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

