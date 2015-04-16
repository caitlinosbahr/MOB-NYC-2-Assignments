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
        var settingsName = settings.stringForKey("settings_name")
        
        var text = settingsName
        
        var sliderValue: AnyObject? = settings.valueForKey("settings_slider") 
        
        if sliderValue != nil {
            text = settingsName! + " \(sliderValue!)"
        }
        
        if text != nil {
            self.textView.text = text
        } else {
            self.textView.text = "No settings found"
        }
    }
    
}
