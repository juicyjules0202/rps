//
//  ViewController.swift
//  rps
//
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
    func detirmineWinner() {
        randInput = Int(arc4random_uniform(3))
        print(randInput)
        if playerInput == randInput{
            
        }
    }
    @IBAction func btnPpr(_ sender: Any) {
        print("enter")
        playerInput = 0
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

