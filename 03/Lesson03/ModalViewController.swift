
import UIKit

class ModalViewController: UIViewController {

    
    @IBAction func clickDismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}
