//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
// Checks for any item in pList with the word 'laser' in its name and a number less than 30 in its
// carbonAge. If these are both found then the itemID is appended to a new list and returned.
    
    func bannedItems(dataFile: String) -> [Int] {
        let itemPList = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: itemPList) as! [[String:AnyObject]]
        
        var itemsWithoutLaser: [Int] = []

        for item in itemArray {
            if let name = item["Name"] as? String {
                if let carbonAge = item["HistoricalData"]!["CarbonAge"] as? Int {
                    if let itemID = item["ItemID"] as? Int {
                        if name.rangeOfString("Laser") != nil && carbonAge < 30 {
                            itemsWithoutLaser.append(itemID)
                        }
                    }             
                }
            }
        }
        return itemsWithoutLaser
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"