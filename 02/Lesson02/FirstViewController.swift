import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    
    @IBOutlet weak var labelField: UILabel!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    
    
    @IBAction func generateText(sender: AnyObject) {
        let userName = nameInput.text
        let userAge = ageInput.text.toInt()

        /*Todo one:
        let greetingMessage = sayHello("") */
        
        //check out "optional binding"
        if userAge != nil {
            let greetingMessage = sayHelloTo(userName, age: userAge!)
            labelField.text = greetingMessage
        }
        
    }
    
    
    func sayHello(String) -> String {
        return "Hello world!"
    }
    
    func sayHelloTo(name: String, age: Int) -> String {
        return "Hello \(name), you are \(age) years old!"
    }
    



}






