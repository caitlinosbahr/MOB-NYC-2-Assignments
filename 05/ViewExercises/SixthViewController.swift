//STATUS: Stuff is showing up on the view, but not in the cells...

import UIKit

class SixthViewController: ExerciseViewController, UITableViewDelegate, UITableViewDataSource {
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 6"
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.exerciseView.addSubview(tableView)
        self.tableView.frame = self.exerciseView.frame
        self.tableView.contentInset = UIEdgeInsetsMake(CGRectGetMaxY(self.navigationController!.navigationBar.frame), 0, 0, 0)
        self.tableView.autoresizingMask = self.exerciseView.autoresizingMask
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell?
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        }
        
        /* TODO:
        The table view cells on this screen are blank.
        
        Add a label to each cell that is green and centered, and have its text say “Row {X}” (X is the row number of the cell). The tableview should rotate correctly. Use Autolayout.
        */
        
        var label = UILabel()
        label.text = "Row \(indexPath.row)"
        label.textAlignment = .Center
        label.textColor = .greenColor()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.tableView.addSubview(label)
        
        let xConstraint = NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: self.tableView, attribute: .CenterX, multiplier: 1, constant: 0)
        
        let yConstraint = NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: self.tableView, attribute: .CenterY, multiplier: 1, constant: 0)
        
        self.tableView.addConstraint(xConstraint)
        self.tableView.addConstraint(yConstraint)
        

        return cell!
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
}
