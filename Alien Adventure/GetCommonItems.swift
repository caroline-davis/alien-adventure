//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
// This method should take the inventory parameter and remove all of 
// the items that do not have a Common rarity.
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
        let onlyCommonList = inventory.filter({(var item:UDItem) -> Bool in
            return item.rarity.rawValue < 1
        })
        return onlyCommonList
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"