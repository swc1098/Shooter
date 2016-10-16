import SpriteKit
class LevelFinishScene: SKScene {
    // MARK: - ivars -
    let sceneManager:GameViewController
    let results:LevelResults
    var progression: Int = 8
    let button:SKLabelNode = SKLabelNode(fontNamed: GameData.font.mainFont)
    
    // MARK: - Initialization -
    init(size: CGSize, scaleMode:SKSceneScaleMode, results: LevelResults,sceneManager:GameViewController) {
        self.results = results
        self.sceneManager = sceneManager
        super.init(size: size)
        self.scaleMode = scaleMode
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView){
        backgroundColor = GameData.scene.backgroundColor
        
        let label = SKLabelNode(fontNamed: GameData.font.mainFont)
        label.text = "Level Results"
        label.fontSize = 100
        label.position = CGPoint(x:size.width/2, y:size.height/2 + 300)
        addChild(label)
        
        let label2 = SKLabelNode(fontNamed: GameData.font.mainFont)
        label2.text = "You beat level \(results.levelNum)!"
        label2.fontSize = 70
        label2.position = CGPoint(x:size.width/2, y:size.height/2 + 100)
        addChild(label2)
        
        let label4 = SKLabelNode(fontNamed: GameData.font.mainFont)
        label4.text = "Tap to continue"
        label4.fontSize = 70
        label4.position = CGPoint(x:size.width/2, y:size.height/2 - 400)
        addChild(label4)
        
        
        
        
    }
    
    
    // MARK: - Events -
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sceneManager.loadGameScene(levelNum: results.levelNum + 2, lives: results.lives, frHealth: 20 + self.progression)
        
    }
}
