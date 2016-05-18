//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        if inventory.isEmpty {
            return nil
        } else {
            
            var planetMatch = [UDItem?]()
            var oldestCarbonAge = 0
            var oldestItem: UDItem?
            
            for item in inventory {
                if let oldestItemsFromPlanet = item.historicalData["PlanetOfOrigin"] {
                    if planet == oldestItemsFromPlanet as? String {
                        planetMatch.append(item)
                    }
                }
            }
            for planet in planetMatch {
                if let thePlanets = planet?.historicalData["CarbonAge"] as? Int {
                    if thePlanets > oldestCarbonAge {
                        oldestCarbonAge = thePlanets
                        oldestItem = planet!
                    }
                }
            }

            return oldestItem
        }
    }
}
//find oldest item from planet Cunia
//Iterate through the inventory and find all items whose planet of origin matches the planet parameter. Use the historicalData property of UDItem and the key “PlanetOfOrigin”.
//For the items whose planet of origin matches the planet parameter, determine which item is the oldest. Use the historicalData property of UDItem and the key “CarbonAge”.




// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"