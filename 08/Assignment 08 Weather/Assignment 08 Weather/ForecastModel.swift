//
//  ForecastModel.swift
//  Assignment 08 Weather
//
//  Created by Caitlin Osbahr on 4/21/15.
//  Copyright (c) 2015 Caitlin Osbahr. All rights reserved.
//

import Foundation

class ForecastModel {
    var coord : NSDictionary!
    var sys : NSDictionary!
    var weather : NSArray! //how would I get into this array and just show the subcontents? In the class or in the parsing function?
    var base : NSString!
    var main : NSDictionary!
    var wind : NSDictionary!
    var clouds : NSDictionary!
    var rain : NSDictionary!
    
    //What is the difference between a class func and a func in a class? This only worked as a func but I'm not sure why?
    func printModel() {
        println("Location: \(coord)")
        println("Sys: \(sys)")
        println("Overview: \(weather)")
        println("Base: \(base)")
        println("Main: \(main)")
        println("Wind: \(wind)")
        println("Clouds: \(clouds)")
        println("Rain: \(rain)")
    }

}