//
//  AddBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/8/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

extension UDGameSM {
    
    func addBadge(hero: Hero, alien: Alien) {
        
        switch(alien.colorVariant) {
        case .Magenta:
            hero.addBadge(Badge(requestType: alien.currentRequestType))
        case .Teal:
            hero.addBadge(SpecialBadge(requestType: alien.currentRequestType))
        }
        
        enum BadgeAnimation: Int {
            case GrowAndShrink = 0, Rotate, Shake
        }
    }
    
    func GrowAndShrink() {
        let x: Float = 10
        let y: Float = 6
        let numberOfTimes = 2.0 / 0.04
        var actionsArray = [SKAction]()
        
        for _ in 1...Int(numberOfTimes) {
            let dX = Float(arc4random_uniform(UInt32(x))) - x / 2
            let dY = Float(arc4random_uniform(UInt32(y))) - y / 2
            let action = SKAction.moveByX(CGFloat(dX), y: CGFloat(dY), duration: 0.02)
            actionsArray.append(action)
            actionsArray.append(action.reversedAction())
        }
        
        let sequencedAction = SKAction.sequence(actionsArray)
        // TODO: what is onChildWithName??
        SKAction.runAction(SKAction.repeatActionForever(sequencedAction), onChildWithName: "BadgeTeal")
        
    }
    
    func Rotate() {
        let action = SKAction.rotateByAngle(CGFloat(-M_PI), duration: 1.5)
        SKAction.runAction(SKAction.repeatActionForever(action), onChildWithName: "BadgeTeal")
    }
    
    func Shake() {
        let action1 = SKAction.scaleTo(0.8, duration: 1.0)
        let action2 = SKAction.scaleTo(1.1, duration: 1.0)
        let sequencedAction = SKAction.sequence([action1, action2])
        SKAction.runAction(SKAction.repeatActionForever(sequencedAction), onChildWithName: "BadgeTeal")
    }

}