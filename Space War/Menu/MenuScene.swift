//
//  MenuScene.swift
//  Space War
//
//  Created by Hemant Phutela on 21/02/2019.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {

    var starfield:SKEmitterNode!
    var newGameButtonNode:SKSpriteNode!
    var difficultyButtonNode:SKSpriteNode!
    var difficultyLabelNode:SKLabelNode!
    
    override func didMove(to view: SKView) {
        starfield = self.childNode(withName: "starfield") as? SKEmitterNode
        starfield.advanceSimulationTime(10)
        
        newGameButtonNode = self.childNode(withName: "newGameButton") as? SKSpriteNode
        difficultyButtonNode = self.childNode(withName: "difficultyButton") as? SKSpriteNode
        
        difficultyLabelNode = self.childNode(withName: "difficutyLabel") as? SKLabelNode
        
//        let userDefaults = UserDefaults.standard
//
//        if userDefaults.bool(forKey: "hard"){
//            difficultyLabelNode.text = "Hard"
//        } else{
//            difficultyLabelNode.text = "Easy"
//        }
        
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
        
            if nodesArray.first?.name == "newGameButton"{
               
                if let view = self.view {
                    if let scene = SKScene(fileNamed: "GameScene") {
                        scene.scaleMode = .aspectFit
                        view.presentScene(scene)
                    }
                }
            }
//            } else if nodesArray.first?.name == "difficultyButton"{
//                changeDifficulty()
//            }
        }
    }
//    func changeDifficulty(){
//        let userDefaults = UserDefaults.standard
//
//        if difficultyLabelNode.text == "Easy"{
//            difficultyLabelNode.text = "Hard"
//            userDefaults.set(true, forKey: "hard")
//
//        } else {
//            difficultyLabelNode.text = "Easy"
//            userDefaults.set(false, forKey: "hard")
//        }
//
//        userDefaults.synchronize()
//    }
    
}
