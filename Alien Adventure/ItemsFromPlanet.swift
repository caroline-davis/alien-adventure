//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
// Looks in UDItem for all values that match the planet parameter
// For all items it finds its appends them to itemsFound
    
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


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"