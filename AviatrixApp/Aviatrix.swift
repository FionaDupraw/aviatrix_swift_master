//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    //saying who created this plane and airline
    //I have a property 
   var author = ""
    init(myAuthor:String){
        author = myAuthor
    }
    
    //this function should tell us if the airplane is running or not
    var running = false
    
    //starts the airplane so it means it is running
    func start() -> Bool { //bool stands for boolean which means true or false
        return true
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(target : String) {
    
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis"]
    }
}
