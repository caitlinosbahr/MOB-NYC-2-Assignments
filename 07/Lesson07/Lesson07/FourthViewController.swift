import UIKit

//TODO four: Read the file saved in the previous TODO, and make this text box print out the text of that file.

class FourthViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!

    var pathToFile : NSURL? {
        get {
            let filename = "thirdview.txt"
            
            let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).first as NSURL
            let url = docDirectory.URLByAppendingPathComponent(filename, isDirectory: false)
            
            return url
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = pathToFile {
            if let textToDisplay = String(contentsOfURL: path) {
                self.textView.text = textToDisplay
            }
        }
    }
    
}

