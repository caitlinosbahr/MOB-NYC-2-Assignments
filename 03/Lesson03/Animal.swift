import UIKit

class Animal: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func prettyAnimalName() -> String {
        return "Animal name: " + self.name
    }
}


class Cat : Animal {
    override func prettyAnimalName() -> String {
        return "Cat name: " + self.name
    }
}

