import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBOutlet weak var calcInput: UITextField!
    @IBOutlet weak var calcResult: UILabel!

    var sum = 0
    
    @IBAction func addNumber(sender: AnyObject) {
        let addedNumber = calcInput.text.toInt()

        if calcInput != nil {
            sum += addedNumber!
            calcResult.text = String(sum)
            calcInput.text = ""
        }
        

    }
    

}
