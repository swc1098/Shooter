//
//  HomeScene.swift
//  shoter
//
//  Created by student on 9/22/16.
//  Copyright © 2016 djl1005. All rights reserved.
//

import SpriteKit

class HomeScene:SKScene{
    //MARK -ivars-
    let sceneManager: GameViewController
    let button:SKLabelNode = SKLabelNode(fontNamed: GameData.font.mainFont)
    
    //MARK - init-
    init(size: CGSize, scaleMode:SKSceneScaleMode, sceneManager:GameViewController) {
        self.sceneManager = sceneManager
        super.init(size: size)
        self.scaleMode = scaleMode
    }
    
    required init(coder aDecoder: NSCoder){
        fatalError("not implmented")
    }
    
    override func didMove(to view: SKView) {
        backgroundColor = GameData.scene.backgroundColor
        let label = SKLabelNode(fontNamed: GameData.font.mainFont)
        let label2 = SKLabelNode(fontNamed: GameData.font.mainFont)
        
        label.text = "Diamond"
        label2.text = "Blast"
        
        label.fontSize = 200
        label2.fontSize = 200
        
        label.position = CGPoint(x:size.width/2, y: size.height/2 + 400)
        label2.position = CGPoint(x:size.width/2, y: size.height/2 - 200)
        
        label.zPosition = 1
        label2.zPosition = 1
        
        addChild(label)
        addChild(label2)
        
        //label 3 is image
        
        let label4 = SKLabelNode(fontNamed: GameData.font.mainFont)
        label4.text = "Tap to continue"
        label4.fontColor = UIColor.red
        label4.fontSize = 70
        label4.position = CGPoint(x:size.width/2, y: size.height/2 - 400)
        addChild(label4)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sceneManager.loadGameScene(levelNum: 1, totalScore: 0)
    }
    
}
