//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

// Checks to see if lhs has a greater rarity than rhs.
// If it is the same it will then check the baseValue.

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    
    if lhs.rarity.rawValue < rhs.rarity.rawValue {
        return true
    } else if lhs.rarity.rawValue > rhs.rarity.rawValue {
        return false
    } else if lhs.rarity.rawValue == rhs.rarity.rawValue {
        if lhs.baseValue < rhs.baseValue {
            return true
        } else {
            return false
        }
    }
    return false
}


/*To complete this exercise, correctly implement the less-than-operator (<) for UDItem. The definition of less-than for UDItem is as follows:
Given two UDItem objects—lhs (short for “left-hand side”) and rhs (short for “right-hand side”):
lhs is considered less than rhs if it is less rare than rhs
or
If lhs and rhs have the same rarity, then lhs is considered less than rhs if the base value of lhs is less than the base value of rhs. */

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"