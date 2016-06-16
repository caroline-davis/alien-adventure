//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
// Checks to see if there is a badge to match each request type
    
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