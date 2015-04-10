import UIKit

//TODO one: Make this text view print the values of test_string and test_number, stored in NSUserDefaults


class FirstViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let settings = NSUserDefaults.standardUserDefaults()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateText()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateText", name: NSUserDefaultsDidChangeNotification, object: nil)

    }
    
    
    func updateText() {
        
        let string = settings.stringForKey("test_string")
        let num: AnyObject = settings.valueForKey("test_number")!
        
        let text = string! + " \(num)"
        
        textView.text = text
    }
    
}