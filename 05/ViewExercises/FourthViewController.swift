//STATUS: Scrollview won't scroll.


import UIKit

class FourthViewController: ExerciseViewController, UIScrollViewDelegate {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 4"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build a scroll view that takes up the entire screen. 
        
        In the scroll view, place a blue box at the top (20px high, 10px horizontal margins with the screen, a very tall (1000+px, width the same as the screen) purple label containing white text in the middle, and a red box at the bottom (20px high, 10px horizontal margins with the screen). The scroll view should scroll the entire height of the content.
        
        Use Autolayout.

        
        Your view should be in self.exerciseView, not self.view.
        */
        
        var scrollView = UIScrollView()
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(scrollView)
        
        let scrollViewHeight = NSLayoutConstraint(item: scrollView, attribute: NSLayoutAttribute.Height, relatedBy: .Equal, toItem: self.exerciseView, attribute: .Height, multiplier: 1, constant: 0)
        let scrollViewWidth = NSLayoutConstraint(item: scrollView, attribute: .Width, relatedBy: .Equal, toItem: self.exerciseView, attribute: .Width, multiplier: 1, constant: 0)
        
        self.exerciseView.addConstraints([scrollViewHeight, scrollViewWidth])
        
        
        
        var blueBox = UIView()
        blueBox.backgroundColor = UIColor.blueColor()
        blueBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let blueBoxHeight = NSLayoutConstraint(item: blueBox, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let blueBoxLeftMargin = NSLayoutConstraint(item: blueBox, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Left, multiplier: 1, constant: 10)
        
        let blueBoxRightMargin = NSLayoutConstraint(item: blueBox, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: -10)
        
//        self.exerciseView.addSubview(blueBox)
        scrollView.addSubview(blueBox)
        self.exerciseView.addConstraints([blueBoxHeight, blueBoxLeftMargin, blueBoxRightMargin])
        
        
        var purpleLabel = UILabel()
        purpleLabel.backgroundColor = UIColor.purpleColor()
        purpleLabel.textColor = UIColor.whiteColor()
        purpleLabel.text = "I'm purple!"
        purpleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)

        
        let purpleLabelHeight = NSLayoutConstraint(item: purpleLabel, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 1000)
    
        let purpleLabelWidth = NSLayoutConstraint(item: purpleLabel, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        
        let purpleLabelAlign = NSLayoutConstraint(item: purpleLabel, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: blueBox, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        
//        self.exerciseView.addSubview(purpleLabel)
        scrollView.addSubview(purpleLabel)
        self.exerciseView.addConstraints([purpleLabelHeight, purpleLabelWidth, purpleLabelAlign])
        
        
        var redBox = UIView()
        redBox.backgroundColor = UIColor.redColor()
        redBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let redBoxHeight = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let redBoxLeftMargin = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Left, multiplier: 1, constant: 10)
        
        let redBoxRightMargin = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: -10)
        
        let redBoxAlign = NSLayoutConstraint(item: redBox, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: purpleLabel, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        
        
//        self.exerciseView.addSubview(redBox)
        scrollView.addSubview(redBox)
        self.exerciseView.addConstraints([redBoxHeight, redBoxLeftMargin, redBoxRightMargin, redBoxAlign])
        
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("five", sender: nil)
    }

}
