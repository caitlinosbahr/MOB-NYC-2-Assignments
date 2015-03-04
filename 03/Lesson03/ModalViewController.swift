import UIKit

class ModalViewController: UIViewController {

    let dismissButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
    let modalImage:UIImage! = UIImage(named:"llama.jpg")
    
    func viewDismissed() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //use a modal transition
        modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        
        //make a view
        view.backgroundColor = UIColor(red: 0.8, green: 0.5, blue: 1.0, alpha: 1.0)
        
        //add a dismiss button
        dismissButton.setTitle("Dismiss", forState: UIControlState.Normal)
        dismissButton.frame = CGRectMake(40, 40, 40, 40)
        dismissButton.addTarget(self, action: "viewDismissed", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(dismissButton)
        
        if (modalImage != nil) {
            let imageView = UIImageView(image: modalImage)
            imageView.frame = view.frame
            imageView.frame = CGRectMake(10, 10, 100, 10)
            view.addSubview(imageView)
        }

    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
