import UIKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func saveButtonPressed(sender: AnyObject) {
        saveInfo()
        addCell()
    }
    

    //Saving form fields into a dictionary...
    
    var contacts = [String: String]()
    
    func saveInfo() {
        contacts[emailField.text] = phoneNumberField.text
        println(contacts)
    }

    
    // Adding the cell adds the stuff in the dictionary!!!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func addCell() {
        contacts.keys
        tableView.reloadData()
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("tableCell") as UITableViewCell
        
            let contact = contacts.keys.array[indexPath.row]
    
            cell.textLabel!.text = contact
            cell.detailTextLabel!.text = contacts[contact]
        
//        cell.textLabel!.text = contacts[contacts.count - 1 - indexPath.row]
        return cell
    }
    

    

    
}
