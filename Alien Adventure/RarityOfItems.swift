//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
// The switch checks the items value in UDItemRarity and appends the number to
// rareItems.
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rareItems: [UDItemRarity: Int] = [.Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0]
        
        for item in inventory {
            let itemsValue = item.rarity.rawValue
            
            switch itemsValue {
                case 0:
                    var valueCommon = rareItems[.Common]!
                    valueCommon += 1
                    rareItems.updateValue(valueCommon, forKey: .Common)
                case 1:
                    var valueUncommon = rareItems[.Uncommon]!
                    valueUncommon += 1
                    rareItems.updateValue(valueUncommon, forKey: .Uncommon)
                case 2:
                    var valueRare = rareItems[.Rare]!
                    valueRare += 1
                    rareItems.updateValue(valueRare, forKey: .Rare)
                case 3:
                    var valueLegendary = rareItems[.Legendary]!
                    valueLegendary += 1
                    rareItems.updateValue(valueLegendary, forKey: .Legendary)
                default: ()
            }
        }
        return rareItems
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"