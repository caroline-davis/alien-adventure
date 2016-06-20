//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
// Loops through inventory and adds items to noDuplicates Array
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        var noDuplicates = [UDItem]()
        for item in inventory {
            if !noDuplicates.contains(item) {
                noDuplicates.append(item)
            }
        }
        return noDuplicates
    }
}
