//
//  Player.swift
//  Space War
//
//  Created by Tirthraj Chauhan on 2019-02-07.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class Player : GameObject {
    
    init() {
        super.init(imageString: "shuttle", initialScale: 2.0)
        self.Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        self.zPosition = 1
    }
    
    
    override func CheckBounds() {
        // check the right boundary
        if(self.position.x > 720 - self.halfWidth!) {
            self.position.x = 720 - self.halfWidth!
        }
        
        // check the left boundary
        if(self.position.x < 30 + self.halfWidth!) {
            self.position.x = 30 + self.halfWidth!
        }
    }
    
    override func Update() {
        CheckBounds()
    }
    
    override func Reset() {
    }
}
