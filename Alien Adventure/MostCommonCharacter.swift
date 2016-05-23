//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
// Uses the .characters method to iterate through UDItem name and checks each character
// against the alphabetChar. The character and count is added to an empty dictionary and
// the largest character count character is then returned.
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        if inventory.isEmpty {
            return nil
        }
        var characters = [Character: Int]()
        for item in inventory {
            let itemName = item.name
            for nameChar in itemName.characters {
                for alphabetChar in "abcdefghijklmnopqrstuvwxyz".characters {
                    
                    if nameChar == alphabetChar {
                        if let count = characters[alphabetChar] {
                            characters[alphabetChar] = count + 1
                        } else {
                            characters[alphabetChar] = 1
                        }
                    }
                }
            }
        }
        var largestCharacter: Character = "a"
        var largestNumber: Int = 0
        for (key, value) in characters {
            if value > largestNumber {
                largestNumber = value
                largestCharacter = key
            }
        }
        return largestCharacter
    }
}

