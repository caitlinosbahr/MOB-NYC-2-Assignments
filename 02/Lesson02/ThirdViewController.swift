import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
*/

    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var numberLabel: UILabel!

    @IBAction func checkEven(sender: AnyObject) {
        let number = numberField.text.toInt()
        
        if number != nil {
            if number! % 2 == 0 {
                numberLabel.text = "Number is even"
            }
        }
    }

}