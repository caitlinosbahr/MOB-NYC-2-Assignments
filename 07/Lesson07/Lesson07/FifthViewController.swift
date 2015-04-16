import UIKit

//TODO Five: Strings can be entered into this text box in a space-delimited fashion. They represent an array of strings. E.g. the entry "a b c" corresponds to array ["a", "b", "c"]. Save the array of strings that corresponds to the text in this text box to a file.

class FifthViewController: UIViewController {
    
    override func viewWillDisappear(animated: Bool) {
        let filename = "fifthview.txt"
        
        let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
        let url = docDirectory.URLByAppendingPathComponent(filename)
        
        let myString : String = textView.text
        let myArray : Array = myString.componentsSeparatedByString(" ")
        let stringForFile = "\(myArray)"
        
        stringForFile.writeToURL(url, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
    }
    
    @IBOutlet weak var textView: UITextView!
    
    
    
}
