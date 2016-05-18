//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        var itemsFound = [UDItem]()
        for item in inventory {
            if let itemsFromPlanet = item.historicalData["PlanetOfOrigin"]{
                if planet == itemsFromPlanet as? String {
                    itemsFound.append(item)
                }
            }
        }        
        return itemsFound
    }
    
}

//Find items Origin. Look in UDItem for var historicalData: [String:AnyObject].
//Use the key “PlanetOfOrigin”, which contains a value that can be converted to a Swift string. 
//Also try printing out historicalData for an item to see all the key/value pairs it contains.

            // planet parameter has to equal planet of origin value

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"