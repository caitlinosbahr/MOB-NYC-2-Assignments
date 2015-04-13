import UIKit
import Foundation

//TODO three: Save the text in this text box to a flat file when 'next' is pressed.

class ThirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    /*
    var pathToFile : NSURL? {
        get {
            let filename = "thirdview.txt"
            
            let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).first as NSURL
            let url = docDirectory.URLByAppendingPathComponent(filename, isDirectory: false)
            
            println(url)
            return url
        }
    }
    */
    
    //trying strategy from mobbook below
    
    let path = NSTemporaryDirectory() + "thirdview.plist"
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
    
    
    @IBAction func pressedNext(sender: AnyObject) {
        writeFile()
    }
    
    
}
