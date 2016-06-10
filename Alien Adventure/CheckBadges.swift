//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var allMatchedBadges = [UDRequestType]()
            for badge in badges {
                let theBadge = badge.requestType
                    allMatchedBadges.append(theBadge)
                }
        for request in requestTypes {
            if !allMatchedBadges.contains(request) {
                return false
            }
        }
    return true
    }
}


/*To complete this exercise, correctly implement the checkBadges method. This method should perform the following tasks:
Iterate through requestTypes and check if there is a badge which fulfilled each request type.
If each requestType has a corresponding badge, then return true. Otherwise, return false. */