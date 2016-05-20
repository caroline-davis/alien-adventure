//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {

// Looks at all the items in planetListJSON and multiplies them by 1,2,3 or 4 depending on their rarity.
// It then adds those numbers together and returns the Name of the planet that has the highest rarity.
    
    func planetData(dataFile: String) -> String {
        
        let planetDataJSON = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawPlanetDataJSON = NSData(contentsOfURL: planetDataJSON)!
        
        var biggestNumber: Int = 0
        var biggestPlanetName: String = ""
        
        var planetListFromJSON: [[String:AnyObject]]!
        do {
            planetListFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetDataJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
            
            for planet in planetListFromJSON {
                if let planetName = planet["Name"] as? String {
                    if let commonItems = planet["CommonItemsDetected"] as? Int {
                        if let uncommonItems = planet["UncommonItemsDetected"] as? Int {
                            if let rareItems = planet["RareItemsDetected"] as? Int {
                                if let legendaryItems = planet["LegendaryItemsDetected"] as? Int {
                                    let numberofItems = (commonItems * 1) + (uncommonItems * 2) + (rareItems * 3) +
                                                        (legendaryItems * 4)
                                    if biggestNumber <= numberofItems {
                                        biggestNumber = numberofItems
                                        biggestPlanetName = planetName
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return biggestPlanetName
    }
}



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"