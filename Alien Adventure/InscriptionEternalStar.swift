//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    // If the string "THE ETERNAL STAR" is in the struct UDItem return the string.
    // If it is not it returns nil by using optionals.
    
    func inscriptionEternalStar(inventories: [UDItem]) -> UDItem? {
        for inventory in inventories {
            if (inventory.inscription?.rangeOfString("THE ETERNAL STAR") != nil) {
                return inventory
            }
        }
        return nil
    }
}



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"