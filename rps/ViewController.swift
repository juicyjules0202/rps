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
    
    @IBOutlet weak var btnPpr: UIButton!
    @IBOutlet weak var btnScs: UIButton!
    @IBOutlet weak var btnRck: UIButton!
    func detirmineWinner() {
        randInput = Int(arc4random_uniform(3))
        print(randInput)
        if playerInput == randInput{
            print("it's a draw.")
        } else {
            if playerInput == 0 &&  randInput == 2{
                playerInput += 3
            } else if randInput == 0 &&  playerInput == 2{
                randInput += 3
            }
            if randInput > playerInput{
                print("ur a srs nub brb u succ beeg nuts oooooofffffff")
                print("this actually means you lose lmao")
            } else {
                print("bitconnEEEEEEEEEEEEEct")
                print("you win this logic actually works")
            }
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
    
    @IBOutlet weak var lblMain: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

