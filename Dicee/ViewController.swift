//
//  ViewController.swift
//  Dicee
//
//  Created by Ka Ling on 6/1/18.
//  Copyright © 2018 NotaProgrammer.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1Image: UIImageView!
    @IBOutlet weak var dice2Image: UIImageView!
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    func updateDiceImages()-> Void{
        randomDiceIndex1 = Int(arc4random_uniform(5))
        randomDiceIndex2 = Int(arc4random_uniform(5))
    
        dice1Image.image = UIImage(named: diceArray[randomDiceIndex1])
        dice2Image.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }

    
}

