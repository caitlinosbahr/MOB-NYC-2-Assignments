import UIKit

//TODO three: Save the text in this text box to a flat file when 'next' is pressed.

class ThirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var pathToFile : NSURL? {
        get {
            let filename = "thirdview.txt"
            
            let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).first as NSURL
            let url = docDirectory.URLByAppendingPathComponent(filename, isDirectory: false)
            
            println(url)
            return url
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func pressedNext(sender: AnyObject) {
        var textToDisplay = NSString(string: textView.text)
        textToDisplay.writeToURL(pathToFile!, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
    }
    
}
