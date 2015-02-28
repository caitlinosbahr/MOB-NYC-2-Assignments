import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBOutlet weak var calcInput: UITextField!
    
    @IBOutlet weak var calcResult: UILabel!
    
    @IBAction func addNumber(sender: AnyObject) {
        let originalNumber = calcResult.description
        let addedNumber = calcInput.description
        let totalNumber = calcResult.text
        
        let a = originalNumber
        let b = addedNumber
        var c = a + b
    }

}
