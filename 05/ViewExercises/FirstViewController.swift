import UIKit

class FirstViewController: ExerciseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 1"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Create a red box (10px tall, the width of the screen) with a black border on the very top of the screen below the nav bar,
        and a black box with a red border on the very bottom of the screen (same dimensions), above the toolbar.
        
        Use AUTOLAYOUT
        
        Your view should be in self.exerciseView, not self.view
        */
        

        
        var redBox = UIView()
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.borderWidth = 1
        
        redBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let redBoxHeight = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 10)
        
        let redBoxWidth = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        
//this puts the red box in the middle – need to figure out how to make it relative to the nav bar >:|
        let redBoxTopConstraint = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.CenterYWithinMargins, multiplier: 1, constant: 0)

        self.exerciseView.addSubview(redBox)
        self.exerciseView.addConstraints([redBoxHeight, redBoxWidth, redBoxTopConstraint])
        
        
        
        
    
    }
    
    
    
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    func next() {
        self.performSegueWithIdentifier("two", sender: nil)
    }
}
