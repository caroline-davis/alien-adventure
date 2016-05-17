//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    // Returns the item in UDItem in baseValue (an Int) that  has the
    // lowest value or if there is nothing in baseValue it returns Nil.
    
    func leastValuableItem(inventories: [UDItem]) -> UDItem? {
        var listOfItems = [Int]()
        for inventory in inventories {
            listOfItems.append(inventory.baseValue)
        }
        let minElement = listOfItems.minElement()
        for inventory in inventories {
            if inventory.baseValue == minElement {
            return inventory
            }
        }
        return nil
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"