import UIKit

class SecondViewController: UIViewController {
    
    //TODO two: Make this text view print the values of the string and slider value stored in the settings bundle of the app.
    @IBOutlet weak var textView: UITextView!
    
    let settings = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateText()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateText", name: NSUserDefaultsDidChangeNotification, object: nil)
    }
    
    
    func updateText() {
        let string = settings.stringForKey("settings_name")
        
        var text = string
        
        var sliderValue: AnyObject? = settings.valueForKey("settings_slider")!
        if let slider: AnyObject = sliderValue {
            text = string! + " \(sliderValue!)"
        }
        
        textView.text = text
    }
    
}
