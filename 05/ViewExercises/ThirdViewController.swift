//This seems really shitty, but I couldn't figure out how to use a autolayout in a class for the blue squares :(

import UIKit

class ThirdViewController: ExerciseViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view 
        */
        

        
        var blueSquare = UIView()
        blueSquare.backgroundColor = UIColor.blueColor()
        blueSquare.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueSquare)
        
        let blueSquareHeight = NSLayoutConstraint(item: blueSquare, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let blueSquareWidth = NSLayoutConstraint(item: blueSquare, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        
        
        var blueSquare2 = UIView()
        blueSquare2.backgroundColor = UIColor.blueColor()
        blueSquare2.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueSquare2)
        
        let blueSquare2Height = NSLayoutConstraint(item: blueSquare2, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let blueSquare2Width = NSLayoutConstraint(item: blueSquare2, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)

        
        
        var blueSquare3 = UIView()
        blueSquare3.backgroundColor = UIColor.blueColor()
        blueSquare3.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueSquare3)
        
        let blueSquare3Height = NSLayoutConstraint(item: blueSquare3, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let blueSquare3Width = NSLayoutConstraint(item: blueSquare3, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)

        
        var blueSquare4 = UIView()
        blueSquare4.backgroundColor = UIColor.blueColor()
        blueSquare4.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.exerciseView.addSubview(blueSquare4)

        let blueSquare4Height = NSLayoutConstraint(item: blueSquare4, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        let blueSquare4Width = NSLayoutConstraint(item: blueSquare4, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        
        
        
        let alignRight2 = NSLayoutConstraint(item: blueSquare2, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: 0)
        
        let alignRight3 = NSLayoutConstraint(item: blueSquare3, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: 0)
        
        let alignBottom3 = NSLayoutConstraint(item: blueSquare3, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        
        let alignBottom4 = NSLayoutConstraint(item: blueSquare4, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.exerciseView, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        
        
        
        self.exerciseView.addConstraints([blueSquareHeight, blueSquareWidth, blueSquare2Height, blueSquare2Width, blueSquare3Height, blueSquare3Width, blueSquare4Height, blueSquare4Width,alignRight2, alignRight3, alignBottom3, alignBottom4])

    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
