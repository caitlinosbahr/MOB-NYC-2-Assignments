import UIKit

//TODO four: Read the file saved in the previous TODO, and make this text box print out the text of that file.

class FourthViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let filename = "thirdview.txt"
        
        let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
        let url = docDirectory.URLByAppendingPathComponent(filename)

        
        let text = String(contentsOfURL: url, encoding: NSUTF8StringEncoding, error: nil)
        
        textView.text = text
    }
}

