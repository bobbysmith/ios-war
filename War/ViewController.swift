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
    
    @IBOutlet var backgroundImageView: UIView!
    
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
//        self.playButton.setTitle("Go", forState: UIControlState.Normal)
//        println("clicked")
        var randomNumberOne = arc4random_uniform(13) + 1
        var randomNumberTwo = arc4random_uniform(13) + 1
        
        var cardOne = String(format: "card%i", randomNumberOne)
        var cardTwo = String(format: "card%i", randomNumberTwo)
        
        self.firstCardImageView.image = UIImage(named: cardOne)
        self.secondCardImageView.image = UIImage(named: cardTwo)
    }

}

