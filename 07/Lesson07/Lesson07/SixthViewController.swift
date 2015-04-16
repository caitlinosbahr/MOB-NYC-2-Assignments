import UIKit

// TODO six: Read the array saved in the previous file and print its space-delimited string representation here.

class SixthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let filename = "fifthview.txt"
        
        let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
        let url = docDirectory.URLByAppendingPathComponent(filename)

        textView.text = String(contentsOfURL: url, encoding: NSUTF8StringEncoding, error: nil)
    }
    
    @IBOutlet weak var textView: UITextView!
}