// Assignment 8 playground

import XCPlayground
import Foundation

// Let asynchronous code run
XCPSetExecutionShouldContinueIndefinitely()

//TODO one: Write and call a function that make a successful network connection to google.com using core networking APIs, then print out the results.

func callGoogle() {

    let url = NSURL(string: "http://www.google.com")

    let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
        println(NSString(data: data, encoding: NSUTF8StringEncoding))
    }

    task.resume()
}

callGoogle()


//TODO two: Write and call a function that makes a failing network connection (using core networking APIs) to http://generalassemb.ly/foobar.baz, a nonexistant page. Print out the status code and body of the response.

func failedConnection() {
    
    let url = NSURL(string: "http://generalassemb.ly/foobar.baz")

    let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) -> Void in
        if error != nil {
            println(error)
        } else {
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
        }
    }

    task.resume()
}

failedConnection()



//TODO three: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON using core networking APIs. Create a model class that corresponds to the JSON response object, populate it with the contents of that JSON using NSJSONSerialization, then print out the model.

class ForecastModel {
    var coord : NSDictionary!
    var sys : NSDictionary!
    var weather : NSArray! //how would I get into this array and just show the subcontents? In the class or in the parsing function?
    var base : NSString!
    var main : NSDictionary!
    var wind : NSDictionary!
    var clouds : NSDictionary!
    var rain : NSDictionary!
    
    //does it make more sense for the model to print? or the function? not sure
    }


func getForecast() {
    let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US")!
    var forecast = ForecastModel()
    
    let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
        
        var json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: nil) as! NSDictionary
        
        let coord = (json as NSDictionary)["coord"] as! NSDictionary
        let sys = (json as NSDictionary)["sys"] as! NSDictionary
        let weather = (json as NSDictionary)["weather"] as! NSArray
        let base = (json as NSDictionary)["base"] as! NSString
        let main = (json as NSDictionary)["main"] as! NSDictionary
        let wind = (json as NSDictionary)["wind"] as! NSDictionary
        let clouds = (json as NSDictionary)["clouds"] as! NSDictionary
        let rain = (json as NSDictionary)["rain"] as! NSDictionary
        
        println("Location: \(coord)")
        println("Sys: \(sys)")
        println("Overview: \(weather)")
        println("Base: \(base)")
        println("Main: \(main)")
        println("Wind: \(wind)")
        println("Clouds: \(clouds)")
        println("Rain: \(rain)")
    })
    
    task.resume()
}

getForecast()



//TODO four: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON. Populate a your above-defined model with the contents of that JSON using SwiftyJSON, then print out the model.

func getSwiftyForecast() {
    let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US")!
    var forecast = ForecastModel()
    
    let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
        
        var json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: nil) as! NSDictionary
        
        //parse and print here using SwiftyJSON syntax - maybe in a Project? Not sure how to connect Swifty in a Playground
        
    })
    
    task.resume()
}

//getSwiftyForecast()


