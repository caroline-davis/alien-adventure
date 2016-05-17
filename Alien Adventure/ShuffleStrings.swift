//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
    
        // Checks to see if the strings are empty or if s1 + s2 are the
        // same length as shuffle string.
        
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        }
        else if (s1.characters.count + s2.characters.count) != shuffle.characters.count {
            return false
        }
        
        // Calls the function checkIndex and returns a Bool
        
        let checkStringOne = checkIndex(shuffle: shuffle, testString: s1)
        let checkStringTwo = checkIndex(shuffle: shuffle, testString: s2)
        
        if checkStringOne == true && checkStringTwo == true {
            return true
        } else {
            return false
        }
    }
    
    func checkIndex(shuffle shuffle: String, testString: String) -> Bool {
        
        // Checks a strings index compared to shuffle strings index
        
        var shuffleAIndex: String.Index?
        var shuffleBIndex: String.Index?
        
        let testStringAIndex = testString.startIndex
        let testStringBIndex = testStringAIndex.successor()
        
        for index in shuffle.characters.indices {
            if testString[testStringAIndex] == shuffle[index] {
                shuffleAIndex = index
            } else if testString[testStringBIndex] == shuffle[index] {
                shuffleBIndex = index
            }
        }
        if shuffleAIndex < shuffleBIndex {
            return true
        } else {
            return false
        }
    }
}