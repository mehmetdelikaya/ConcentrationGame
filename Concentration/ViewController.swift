//
//  ViewController.swift
//  Concentration
//
//  Created by Mehmet Delikaya on 21.05.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var game = ConcentrationModel(numberOfPairOfCards: numberOfPairsOfCards)
    
    var numberOfPairsOfCards: Int{
        get{
            return (cardButtons.count+1)/2
        }
    }
    
    private var randomTheme : Int?
    private var emojiCodes : Array<String>?
   
    @IBOutlet private weak var flipCounter: UILabel!
    @IBOutlet private var cardButtons: [UIButton]!
    @IBOutlet private var backgroundTheme: UIView!
    @IBOutlet private weak var scoreBoard: UILabel!
    @IBOutlet private weak var newGame: UIButton!
    @IBAction private func startNewGame(_ sender: UIButton) {
        
        scoreBoard.text = "Score: 0"
        
        game = ConcentrationModel(numberOfPairOfCards: (cardButtons.count+1)/2)
        
        prepareViews()
        updateViewFromModel()
    }
    
  
    
    func prepareViews(){
        
        
        flipCounter.text = "Flip Count: \(game.getFlipCount())"
        
        randomTheme = Int(arc4random_uniform(UInt32(7)))
        switch randomTheme {
        case 0:
            backgroundTheme.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            emojiCodes = ["🔧","🔨","⚒","🛠","⛏","🔩","⚙️","⛓","🔫","💣","🔪","🗡","⚔️","🛡"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            scoreBoard.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            newGame.backgroundColor =  #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            flipCounter.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            scoreBoard.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            newGame.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: UIControl.State.normal)
        case 1:
            backgroundTheme.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            emojiCodes = ["🤒","🤕","🤢","🤮","🤧","😇","🤠","🤡","🥳","🥴","🥺","🤥","🤫","🤭"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            scoreBoard.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            newGame.backgroundColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            flipCounter.textColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            scoreBoard.textColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
            newGame.setTitleColor(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1), for: UIControl.State.normal)
        case 2:
            backgroundTheme.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            emojiCodes = ["🚗","🚲","🚅","🚌","🛩","🏎","🚓","🚑","🏍","🚁","🚀","🚛","🚜","🛴"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            scoreBoard.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            newGame.backgroundColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            flipCounter.textColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            scoreBoard.textColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            newGame.setTitleColor(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1), for: UIControl.State.normal)
        case 3:
            backgroundTheme.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            emojiCodes = ["🥩","🍗","🍖","🌭","🍔","🍟","🍕","🥪","🥙","🌮","🌯","🥗","🥘","🍳"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            scoreBoard.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            newGame.backgroundColor =  #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            flipCounter.textColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            scoreBoard.textColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            newGame.setTitleColor(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), for: UIControl.State.normal)
        case 4:
            backgroundTheme.backgroundColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
            emojiCodes = ["🎭","🎨","🎬","🎤","🎧","🎼","🎹","🥁","🎷","🎺","🎸","🎻","🎲","🧩"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            scoreBoard.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            newGame.backgroundColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            flipCounter.textColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
            scoreBoard.textColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
            newGame.setTitleColor(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1), for: UIControl.State.normal)
        case 5:
            backgroundTheme.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
            emojiCodes = ["⌚️","📱","📻","💻","⌨️","🖥","🖨","☎️","🖲","🕹","🗜","💽","💾","💿"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            scoreBoard.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            newGame.backgroundColor =  #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            flipCounter.textColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
            scoreBoard.textColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
            newGame.setTitleColor(#colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1), for: UIControl.State.normal)
        case 6:
            backgroundTheme.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            emojiCodes = ["🦖","🦕","🐙","🦑","🦉","🦀","🐡","🐠","🐟","🦅","🐳","🐍","🦈","🐊"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            scoreBoard.backgroundColor = #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            newGame.backgroundColor =  #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            flipCounter.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            scoreBoard.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            newGame.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: UIControl.State.normal)
        default:
            backgroundTheme.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            emojiCodes = ["🦖","🦕","🐙","🦑","🦐","🦀","🐡","🐠","🐟","🐬","🐳","🐋","🦈","🐊"]
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            }
            flipCounter.backgroundColor = #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            scoreBoard.backgroundColor = #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            newGame.backgroundColor =  #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
            flipCounter.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            scoreBoard.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            newGame.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: UIControl.State.normal)
        }
    }
    
    override func viewDidLoad() {
        
        prepareViews()
        
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        if let cardNumber = cardButtons.firstIndex(of: sender){
            scoreBoard.text = "Score:  \(game.chooseCard(at: cardNumber))"
            updateViewFromModel()
             flipCounter.text = "Flip Count: \(game.getFlipCount())"
        }else{
            print("Chosen card is not on buttons array")
        }
    }
    
    private func updateViewFromModel(){
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if(card.isFaceUp){
                button.setTitle(emoji(for:card), for: UIControl.State.normal)
            }else{
                button.setTitle("", for: UIControl.State.normal)
                if card.isMatched{
                    button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
                }
            }
        }
    }

    
    
    private var emoji = [Int:String]()
    
    private func emoji(for card: Card) -> String{
        
        if emoji[card.identifier]==nil, emojiCodes!.count>0 {
                let randomIndex = emojiCodes?.count.arc4random
                
                emoji[card.identifier] = emojiCodes!.remove(at: randomIndex!)
            
        }
        
        
        
//        if emoji[card.identifier] != nil{
//            return emoji[card.identifier]!
//        }else{
//            return "?"
//        }
        
        return emoji[card.identifier] ?? "?"
    }
}

extension Int {
    var arc4random: Int {
        
        if self>0{
             return  Int(arc4random_uniform(UInt32(self)))
        } else if self<0 {
             return  -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
             return 0
        }
    
    }
}

