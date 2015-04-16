import UIKit
import Foundation

//TODO three: Save the text in this text box to a flat file when 'next' is pressed.

class ThirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    

    override func viewWillDisappear(animated: Bool) {
        let filename = "thirdview.txt"
        
        let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
        let url = docDirectory.URLByAppendingPathComponent(filename)
        
        textView.text.writeToURL(url, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
    }
}

    
    /*
    trying strategy from mobbook below - Noted to ask Arun about why this doesn't work
    
    let path = NSTemporaryDirectory() + "thirdview.txt"
    var textToWrite = String()
    
    func writeFile() {
        if NSFileManager().fileExistsAtPath(path) {
            textView.text = textToWrite
            textToWrite.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
        } else {
            NSFileManager().createDirectoryAtPath(path, withIntermediateDirectories: true, attributes: nil, error: nil)
            textView.text = textToWrite
            textToWrite.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
        }
    }
    */
