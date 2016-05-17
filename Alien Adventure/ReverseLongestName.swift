//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    //Picks longest name in inventory and reverses the letters.
    
    func reverseLongestName(inventories: [UDItem]) -> String {
        var longestName = ""
        for inventory in inventories {
            let longestNameSize = longestName.characters.count
            let inventoryNameSize = inventory.name.characters.count
            if inventoryNameSize > longestNameSize {
                longestName = inventory.name
            }
        }
        return String(longestName.characters.reverse())
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"