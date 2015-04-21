//
//  ViewController.swift
//  Assignment 08 Weather
//
//  Created by Caitlin Osbahr on 4/21/15.
//  Copyright (c) 2015 Caitlin Osbahr. All rights reserved.
//

import UIKit
import SwiftyJSON


class ViewController: UIViewController {

    //TODO three: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON using core networking APIs. Create a model class that corresponds to the JSON response object, populate it with the contents of that JSON using NSJSONSerialization, then print out the model.
    
    var forecast = ForecastModel()
    let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US")!

    
    func getForecast() {
        
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
            
            //moved the print function into the model. Is that right? Or should I be printing here? IDK
            self.forecast.printModel()
        })
        
        task.resume()
    }
    
    
    
    
    //TODO four: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON. Populate a your above-defined model with the contents of that JSON using SwiftyJSON, then print out the model.
    
    func getSwiftyForecast() {
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
            
            var json = JSON(data: data)
            
            //not sure how to parse dicts? dictionaryValue doesn't work and I can't understand what Arun did with the for-loop in the previous weather app project
            
//            self.forecast.coord = json["coord"]
//            self.forecast.sys = json["sys"]
//            self.forecast.weather = json["weather"]
            self.forecast.base = json["base"].stringValue
//            self.forecast.main = json["main"]
//            self.forecast.wind = json["wind"]
//            self.forecast.clouds = json["clouds"]
//            self.forecast.rain = json["rain"]
            
            self.forecast.printModel()
            
        })
        
        task.resume()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getForecast()
        getSwiftyForecast()
    }

}

