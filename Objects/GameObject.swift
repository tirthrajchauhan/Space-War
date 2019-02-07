//
//  GameObject.swift
//  Space War
//
//  Created by Tirthraj Chauhan on 2019-02-07.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class GameObject : SKSpriteNode, GameProtocol {
    // common GameObject variables
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var verticalSpeed: CGFloat?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    
    // Initializers
    init(imageString: String, initialScale: CGFloat) {
        // initialize the GameObject with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        setScale(initialScale)
        self.scale = initialScale
        self.width = texture.size().width * self.scale!
        self.height = texture.size().height * self.scale!
        self.halfWidth = self.width! * 0.5
        self.halfHeight = self.height! * 0.5
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // class Functions (methods)
    func Reset() {
        
    }
    
    func CheckBounds() {
        
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
}
