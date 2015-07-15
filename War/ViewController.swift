//
//  ViewController.swift
//  War
//
//  Created by Bobby Smith on 7/5/15.
//  Copyright (c) 2015 Bobby Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    
    @IBOutlet weak var secondCardImageView: UIImageView!
    
    @IBOutlet weak var playButton: UIButton!
  
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
  
    @IBOutlet var backgroundImageView: UIView!
    var cardArray: [String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9",
    "card10", "jack", "queen", "king", "ace"]
  
    var playerScoreTotal: Int = 0
    var enemyScoreTotal: Int = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// @IBAction keyword days that this method is connected to an event on the storyboard
    @IBAction func playRoundTapped(sender: UIButton) {
/*        self.playButton.setTitle("Go", forState: UIControlState.Normal)
        println("clicked")
*/
         // generates random numbers for cards
        var randomNumberOne:Int = Int(arc4random_uniform(13))
        var randomNumberTwo:Int = Int(arc4random_uniform(13))
        
        // accesses the card from the card array
        var cardOne: String = self.cardArray[randomNumberOne]
        var cardTwo: String = self.cardArray[randomNumberTwo]
        
        // updates UIImage with card asset made from previous vars
        self.firstCardImageView.image = UIImage(named: cardOne)
        self.secondCardImageView.image = UIImage(named: cardTwo)

      
 
        if randomNumberOne > randomNumberTwo{
          playerScoreTotal += 1
          self.playerScore.text = String(playerScoreTotal)
        } else if randomNumberOne == randomNumberTwo {

        } else {
          enemyScoreTotal += 1
          self.enemyScore.text = String(enemyScoreTotal)
        }
    }

}

