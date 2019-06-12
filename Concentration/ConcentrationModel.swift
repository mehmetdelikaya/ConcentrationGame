//
//  ConcentrationModel.swift
//  Concentration
//
//  Created by Mehmet Delikaya on 28.05.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import Foundation

class ConcentrationModel{
    
    
    private(set) var cards =  [Card]()
    var seenCards = [Int]()
    
    private var indexOfOneAndOnlyFaceUpCard : Int? {
        get{
            var foundIndex: Int?
            
            for index in cards.indices{
                if cards[index].isFaceUp{
                    if foundIndex==nil{
                        foundIndex = index
                    }else{
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index==newValue)
            }
        }
    }
    var totalScore = 0
    var firstDate: Date?
    var secondDate: Date?
    
    var flipCount = 0
    
    func chooseCard(at index: Int) -> Int{
        
        flipCount+=1
        assert(cards.indices.contains(index),"Concentration.chooseCard(at: \(index)): chosen index not in the cards")
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index{
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                    
                    secondDate = Date()
                    print("second: \(secondDate!)")
                    let difference = DateInterval(start: firstDate!, end: secondDate!).duration
                    print("difference : \(difference)")
                    
                    totalScore+=2
                    if(difference<=3){
                        totalScore+=5
                        print("BONUS POINTTT")
                    }
                    
                }else{
                    if(seenCards.contains(cards[index].identifier)){
                        totalScore-=1
                    }else{
                        seenCards.append(cards[index].identifier)
                    }
                }
                
                cards[index].isFaceUp = true
                //indexOfOneAndOnlyFaceUpCard = nil
                
            }else{
                
                firstDate = Date()
                print("first: \(firstDate!)")
                // either no cards or 2 cards are face up
               seenCards.append(cards[index].identifier)
                /*for flipDownIndex in cards.indices{
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true*/
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
        
        
//        if(cards[index].isFaceUp){
//            cards[index].isFaceUp = false
//        }else{
//            cards[index].isFaceUp = true
//        }
        return totalScore
    }
    
    func getFlipCount() -> Int {
        return flipCount
    }
    
    init(numberOfPairOfCards:Int) {
        assert(numberOfPairOfCards>0,"Concentration.init(\(numberOfPairOfCards)): you must have at least one pair of cards")
        for _ in 1...numberOfPairOfCards{
            let card = Card()
            cards += [card,card]
            
        }
        cards.shuffle()
    }
}
