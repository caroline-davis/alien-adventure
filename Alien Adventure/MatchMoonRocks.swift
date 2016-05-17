//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    //Looks in the array UDItem to find all the items with the name moonrock.
    //Returns a list of all the items with the name moonrock.
    
    func matchMoonRocks(inventories: [UDItem]) -> [UDItem] {
        var moonRocksList = [UDItem]()
        for inventory in inventories {
            if inventory.name == "MoonRock" {
                moonRocksList.append(inventory)
            }
        }
        return [UDItem](moonRocksList)
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"