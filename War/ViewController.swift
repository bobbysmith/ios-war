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
//        self.playButton.setTitle("Go", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// @IBAction keyword days that this method is connected to an event on the storyboard
    @IBAction func playRoundTapped(sender: UIButton) {
        self.playButton.setTitle("Go", forState: UIControlState.Normal)
        println("clicked")
    }

}

