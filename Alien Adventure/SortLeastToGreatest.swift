//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
// Uses the overloaded function of the < sign with the UDItem type used in ItemComparison
// It then sorts the list in ascending order
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        var orderedList = inventory.sort({
           $0<$1
        })
        return orderedList
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
