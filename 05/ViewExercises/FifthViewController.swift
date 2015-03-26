// STATUS: Animation code is in place, but it crashes on tap.

import UIKit

class FifthViewController: ExerciseViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 5"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Create a green button with a red border that says ‘Tap me!’ (50px by 50px), center it in the middle of the screen.
        Once tapped, the button should animate up 20 pixels and turn red, then immediately back down 20 pixels and turn back to green. It should not be clickable while animating.
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
        
        var greenButton = UIButton()
        greenButton.setTitle("Tap me!", forState: UIControlState.Normal)
        greenButton.backgroundColor = UIColor.greenColor()
        greenButton.layer.borderWidth = 1
        greenButton.layer.borderColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0).CGColor
        greenButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let greenButtonWidth = NSLayoutConstraint(item: greenButton, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 50)
        
        let greenButtonHeight = NSLayoutConstraint(item: greenButton, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 50)
        
        let yAlign = NSLayoutConstraint(item: greenButton, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        
        let xAlign = NSLayoutConstraint(item: greenButton, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        
        self.exerciseView.addSubview(greenButton)
        self.exerciseView.addConstraints([greenButtonHeight, greenButtonWidth, xAlign, yAlign])
        
        greenButton.addTarget(self, action: "buttonClick", forControlEvents: UIControlEvents.TouchUpInside)


    }

    var greenButton : UIButton?
    var yAlign : NSLayoutConstraint?
    
    
    func buttonClick(sender: UIButton) {
        println("Green button tapped")
        
        UIView.animateWithDuration(0.2, animations: {
            self.greenButton!.backgroundColor = UIColor.redColor()
            self.yAlign!.constant -= 20
            self.view.layoutIfNeeded()
            }, completion: { (finished) in
                UIView.animateWithDuration(0.2, animations: {
                    self.greenButton!.backgroundColor = UIColor.greenColor()
                    self.yAlign!.constant += 20
                    self.view.layoutIfNeeded()
                })
            }
        )
    }
    


    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("six", sender: nil)
    }

}
