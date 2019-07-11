//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//
import Foundation
class Aviatrix {
    
    var running = false
    var author : String
    var currentLocation = "St. Louis"
    var distanceTraveled = Int()
    
    init(myAuthor : String) {
        author = myAuthor
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        return 0.0
    }
    
    func flyTo(destination : String) {
        currentLocation = destination
    }
    
    //I want to tell every plane that I create from this class how far places are
    //I need the place and distance
    func distanceTo(target : String, current : String) -> Int {
        //I need to get information from the AviatrixData file
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
        //Swift uses ! to mean not, but it also uses it to say I know there is definitely data here
    }
    
    //I want to tell every plane that I create from the Aviatrix class where they can fly
    func knownDestinations() -> [String] {
        //change this function so I return all the options for destinations
        //I need to get information from the AviatrixData.swift file
        let data = AviatrixData()
        //I called the AviatrixData class
        return Array(data.knownDistances.keys)
        //I stored all of the keys or destinations in an Array
    }
}
