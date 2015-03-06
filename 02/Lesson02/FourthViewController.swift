import UIKit

class FourthViewController: UIViewController {
/*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
    
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var fibLabel: UILabel!
    
    @IBAction func fibButton(sender: AnyObject) {
        if numberInput != nil {
            let indexOfFibonacciNumber = numberInput.text.toInt()
            let fibonacciNumberAtIndex = FibonacciAdder().fibonacciNumberAtIndex(indexOfFibonacciNumber!)
            fibLabel.text = String(fibonacciNumberAtIndex)
        }
    }
    
}

class FibonacciAdder {
    func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) -> Int{
        if indexOfFibonacciNumber == 0 {
            return 0
        }
        if indexOfFibonacciNumber == 1 {
            return 1
        }
        return fibonacciNumberAtIndex(indexOfFibonacciNumber - 1) + fibonacciNumberAtIndex(indexOfFibonacciNumber - 2)
    }
}