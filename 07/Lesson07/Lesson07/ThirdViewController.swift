import UIKit
import Foundation

//TODO three: Save the text in this text box to a flat file when 'next' is pressed.

class ThirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!

    //Strategy from class
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
    
    //Strategy from mobbook
    /*
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
    */
    
    
    @IBAction func pressedNext(sender: AnyObject) {
        writeFile()
    }
    
    //strategy from stack overflow question... still doesn't work.
    func writeFile(){
        let file = "file.txt"

        if let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String] {
            let dir = dirs[0] //documents directory
            let path = dir.stringByAppendingPathComponent(file)
            let text = textView.text
            
            //writing
            text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil)
        }

    }
    
}