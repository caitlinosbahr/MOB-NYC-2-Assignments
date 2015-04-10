import UIKit

//TODO Five: Strings can be entered into this text box in a space-delimited fashion. They represent an array of strings. E.g. the entry "a b c" corresponds to array ["a", "b", "c"]. Save the array of strings that corresponds to the text in this text box to a file.

class FifthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textView: UITextView!
    
    /* dude why isn't this working,
    let myString : String = textView.text
    let myArray = myString.componentsSeparatedByString(" ")
    
    return myArray
    */

    
}
