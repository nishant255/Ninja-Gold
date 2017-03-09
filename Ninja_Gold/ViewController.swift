//
//  ViewController.swift
//  Ninja_Gold
//
//  Created by Nishant Patel on 3/8/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var console: UILabel!
    
    var total_gold = 0
    
    @IBAction func gameButton(_ sender: UIButton) {
        if sender.tag == 1 {
            print("Farm Pressed")
            let goldEarned = Int(arc4random_uniform(11)+10)
            console.text = "You Earned \(goldEarned) Gold thru Farms"
            total_gold += goldEarned
            updateScores()
        } else if sender.tag == 2 {
            print("Cave Pressed")
            let goldEarned = Int(arc4random_uniform(6)+5)
            console.text = "You Earned \(goldEarned) Gold thru Caves"
            total_gold += goldEarned
            updateScores()
        } else if sender.tag == 3 {
            print("House Pressed")
            let goldEarned = Int(arc4random_uniform(4)+2)
            console.text = "You Earned \(goldEarned) Gold thru Houses"
            total_gold += goldEarned
            updateScores()
        } else if sender.tag == 4 {
            print("Casino Pressed")
            let luck = Int(arc4random_uniform(2)+1)
            if luck == 1 {
                let goldEarned = Int(arc4random_uniform(50)+1)
                console.text = "You Earned \(goldEarned) Gold thru Casino"
                total_gold += goldEarned
                updateScores()
            } else {
                let goldEarned = Int(arc4random_uniform(50)+1)
                console.text = "You Lost \(goldEarned) Gold thru Casino"
                total_gold -= goldEarned
                updateScores()
            }
        }
        
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        total_gold = 0
        console.text = "Golds Reset to 0"
        updateScores()
    }
    
    func updateScores() {
        scoreLabel.text = String(total_gold)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(total_gold)
        console.text = "Gold Earning Statement"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

