//
//  ViewController.swift
//  rps
//andy this is actually my file son deal with it
//  Created by student on 28/9/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
//setup var
class ViewController: UIViewController {
    var playerInput = 0
    var randInput = 0
    var playerWins = 0
    var randWins = 0
    var numberOfWinsToVictory = 3
    var thotOMmeter = 0
    var inSettingsMenu = false
    var settingsStorage = "nothing yet"
    //all the buttons
    @IBOutlet weak var btnPlusGTW: UIButton!
    @IBOutlet weak var btnMinusGTW: UIButton!
    @IBOutlet weak var btnSettings: UIButton!
    @IBOutlet weak var btnResetter: UIButton!
    @IBOutlet weak var btnPpr: UIButton!
    @IBOutlet weak var btnScs: UIButton!
    @IBOutlet weak var btnRck: UIButton!
    //layout setup
    
    //main function
    func detirmineWinner() {
        if inSettingsMenu == false{
            if playerWins != numberOfWinsToVictory && randWins != numberOfWinsToVictory{
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
            }else{
                thotOMmeter += 1
                if thotOMmeter == 1{
                    lblMain.text = "RESET ALREADY"
                } else if thotOMmeter == 2{
                    lblMain.text = "STAHP CLICKING"
                } else if thotOMmeter == 3{
                    lblMain.text = "you thot"
                } else if thotOMmeter == 4{
                    lblMain.text = "THOT"
                } else if thotOMmeter == 5{
                    lblMain.text = "T H O T"
                } else if thotOMmeter == 9{
                    lblMain.text = "I will reset 4 u then"
                } else if thotOMmeter == 10{
                    playerInput = 0
                    randInput = 0
                    playerWins = 0
                    randWins = 0
                    thotOMmeter = 0
                    lblMain.text = "dun waste my time thot"
                    lblMain.textColor = UIColor.black
                    lblScoreboard.text = "0:0"
                } else {
                    lblMain.text = "THOOOOOOOOOOOOT"
                }
            }
        } else {
            lblMain.text = "press the quit button to quit."
        }
    }
  //button functions
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
        thotOMmeter = 0
        lblMain.text = "T R A N C E N D"
        lblMain.textColor = UIColor.black
        lblScoreboard.text = "0:0"
    }
   
    

    @IBAction func minusGTW(_ sender: Any) {
        if inSettingsMenu == true{
            if numberOfWinsToVictory <= (playerWins + 1) && numberOfWinsToVictory <= (randWins + 1) && numberOfWinsToVictory <= 2{
                lblMain.text = "Pls dont break ye app ;-;"
            }else{
                lblMain.text = "game paused."
                numberOfWinsToVictory -= 1
                lblgamestillwin.text = "\(numberOfWinsToVictory) game(s) for the win!"
            }
        }
    }
    
    @IBAction func plusGTW(_ sender: Any) {
        if inSettingsMenu == true{
            lblMain.text = "game paused."
            numberOfWinsToVictory += 1
            lblgamestillwin.text = "\(numberOfWinsToVictory) game(s) for the win!"
        }
    }
    @IBAction func settingsMenu(_ sender: Any) {
        if inSettingsMenu == false{
            inSettingsMenu = true
            btnPlusGTW.isHidden = false
            btnMinusGTW.isHidden = false
            settingsStorage = lblMain.text!
            lblMain.text = "game paused."
            btnSettings.setTitle("RESUME", for: .normal)
        } else {
            inSettingsMenu = false
            btnPlusGTW.isHidden = true
            btnMinusGTW.isHidden = true
            lblMain.text = "game resumed."
            btnSettings.setTitle("PAUSE", for: .normal)
        }
    }
    //labels below
    @IBOutlet weak var lblScoreboard: UILabel!
    @IBOutlet weak var lblMain: UILabel!
    @IBOutlet weak var whatTheBotChose: UILabel!
    @IBOutlet weak var lblgamestillwin: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnPlusGTW.isHidden = true
        btnMinusGTW.isHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

