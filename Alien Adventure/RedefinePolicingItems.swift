//
//  RedefinePolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

// MARK: - UDPolicingError

enum UDPolicingError: ErrorType {
    case NameContainsLaser
    case ItemFromCunia
    case ValueLessThan10
}

extension Hero {
    
    func redefinePolicingItems() -> (UDItem throws -> Void) {
        
        func policingFilter(item: UDItem) throws -> Void {
            
            // if item.name contains the word Laser throw the NameContainsLaser error
                let laserName = item.name
            if laserName.rangeOfString("Laser") != nil {
                    throw UDPolicingError.NameContainsLaser
            }
            // if the item is from planet Cunia throw the ItemFromCunia error
            if let itemsFromCunia = item.historicalData["PlanetOfOrigin"] {
                if "Cunia" == itemsFromCunia as? String {
                    throw UDPolicingError.ItemFromCunia
                }
            // if the item has a base value less than 10 throw the ValueLessThan10 error
                if item.baseValue < 10 {
                    throw UDPolicingError.ValueLessThan10
                }
            }
        }
        
        return policingFilter
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"