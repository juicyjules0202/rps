//
//  ViewController.swift
//  rps
//andy this is actually my file son deal with it
//  Created by student on 28/9/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var playerInput = 0
    var randInput = 0
    var playerWins = 0
    var randWins = 0
    var numberOfWinsToVictory = 3
    
    @IBOutlet weak var btnResetter: UIButton!
    @IBOutlet weak var btnPpr: UIButton!
    @IBOutlet weak var btnScs: UIButton!
    @IBOutlet weak var btnRck: UIButton!
    func detirmineWinner() {
        randInput = Int(arc4random_uniform(3))
        print(randInput)
        if randInput == 0{
            whatTheBotChose.text = ("✋")
        } else if randInput == 1{
            whatTheBotChose.text = ("✌️")
        } else {
            whatTheBotChose.text = ("👊")
        }
        if playerInput == randInput{
            print("it's a draw.")
            lblMain.text = ("you draw a drew")
        } else {
            if playerInput == 0 &&  randInput == 2{
                playerInput += 3
            } else if randInput == 0 &&  playerInput == 2{
                randInput += 3
            }
            if randInput > playerInput{
                print("ur a srs nub brb u succ beeg nuts oooooofffffff")
                print("this actually means you lose lmao")
                lblMain.text = ("S U F F E R L O S S")
                randWins += 1
            } else {
                print("bitconnEEEEEEEEEEEEEct")
                print("you win this logic actually works")
                lblMain.text = ("u actually win wow")
                playerWins += 1
            }
        }
        lblScoreboard.text = "\(playerWins):\(randWins)"
        if playerWins == numberOfWinsToVictory {
            lblMain.text = "you win the bot!"
            lblMain.textColor = UIColor.blue
        } else if randWins == numberOfWinsToVictory{
            lblMain.text = "you lose the bot wait wut"
            lblMain.textColor = UIColor.red
        }
    }
  
    @IBAction func btnPpr(_ sender: Any) {
        print("enter")
        playerInput = 0
        detirmineWinner()
    }
    @IBAction func btnScs(_ sender: Any) {
        playerInput = 1
        detirmineWinner()
    }
    @IBAction func btnRck(_ sender: Any) {
        playerInput = 2
        detirmineWinner()
    }
    @IBAction func resetGame(_ sender: Any) {
        playerInput = 0
        randInput = 0
        playerWins = 0
        randWins = 0
        lblMain.text = "T R A N C E N D"
        lblMain.textColor = UIColor.black
    }
    
    @IBOutlet weak var lblScoreboard: UILabel!
    @IBOutlet weak var lblMain: UILabel!
    @IBOutlet weak var whatTheBotChose: UILabel!
    @IBOutlet weak var lblgamestillwin: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

