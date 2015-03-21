//STATUS: Need to properly align boxes to nav bar and tab bar


import UIKit

class FirstViewController: ExerciseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 1"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Create a red box (10px tall, the width of the screen) with a black border on the very top of the screen below the nav bar,
        and a black box with a red border on the very bottom of the screen (same dimensions), above the toolbar.
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
        

        //RED BOX
        
        var redBox = UIView()
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.borderWidth = 1
        
        redBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let redBoxHeight = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 10)
        
        let redBoxWidth = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        
        //this puts the red box in the middle – need to figure out how to make it relative to the nav bar >:|
        let redBoxTopConstraint = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)

        self.exerciseView.addSubview(redBox)
        self.exerciseView.addConstraints([redBoxHeight, redBoxWidth, redBoxTopConstraint])
        
        
        //BLACK BOX
        
        var blackBox = UIView()
        blackBox.backgroundColor = UIColor.blackColor()
        blackBox.layer.borderWidth = 1
        blackBox.layer.borderColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0).CGColor
        
        blackBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let blackBoxHeight = NSLayoutConstraint(item: blackBox, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 10)
        
        let blackBoxWidth = NSLayoutConstraint(item: blackBox, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        
        //put black box in middle - need to make relative to tab bar
        let blackBoxPosition = NSLayoutConstraint(item: blackBox, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        
        self.exerciseView.addSubview(blackBox)
        self.exerciseView.addConstraints([blackBoxHeight, blackBoxWidth, blackBoxPosition])
    
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
