//
//  GameOver.swift
//  Space War
//
//  Created by Hemant Phutela on 22/02/2019.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import UIKit
import SpriteKit

class GameOver: SKScene {
    var score:Int = 0
    var newGameButtonNode:SKSpriteNode!
    
    var scoreLabel:SKLabelNode!
    
    override func didMove(to view: SKView) {
        
         scoreLabel = self.childNode(withName: "scoreLabel") as? SKLabelNode
       scoreLabel.text = "\(score)"
        newGameButtonNode = self.childNode(withName: "newGameButton") as? SKSpriteNode
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            print("touched")
            if let view = self.view {
                if let scene = SKScene(fileNamed: "GameScene") {
                    scene.scaleMode = .aspectFit
                    view.presentScene(scene)
                }
            }
            
            
        }
    }
}
