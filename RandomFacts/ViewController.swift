//
//  ViewController.swift
//  RandomFacts
//
//  Created by James Walsh on 4/13/20.
//  Copyright © 2020 James Walsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomFactLabel: UILabel!
    
    let colors = [
        UIColor(red: 90/255, green: 187 / 255, blue: 181 / 255, alpha: 1), // teal
        UIColor(red: 222/225, green: 171/255, blue: 66/255, alpha: 1), // yellow
        UIColor(red: 223/255, green: 86/255, blue: 94/255, alpha: 1), // red color
        UIColor(red: 239/255, green: 130/255, blue: 100/255, alpha: 1), // orange
        UIColor(red: 77/255, green: 75/255, blue: 82/255, alpha: 1), // dark color
        UIColor(red: 105/255, green: 94/255, blue: 133/255, alpha: 1), // purple
        UIColor(red: 85/255, green: 176/255, blue: 112/255, alpha: 1), // green
        
    ]
    let facts = [
        "Ostriches can run faster than horses",
        "Ants stretch when they wake up in the morning",
        "Olympic gold medals are actually made mostly of silver",
        "You are born with 300 bones; by the time you are an adult you will have 206",
        "It takes about 8 minutes for the light from the Sun to reach Earth",
        "Some bamboo plants can grow almost a meter in just one day",
        "The state of Florida is bigger than England",
        "Some penguins can leap 2-3 meters out of the water",
        "On average, it takes 66 days to form a new habit",
        "Mammoths still walked the Earth when the Great Pyramid was being built"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        randomFactLabel.text = facts[0]
    }

    
    @IBAction func showAnotherFunFact() {
        let randomNumber = Int.random(in: 0 ... facts.count - 1)

        randomFactLabel.text = facts[randomNumber]
        
        let randomColor = Int.random(in: 0 ... colors.count - 1)
        
        view.backgroundColor = colors[randomColor]
    }
    
}

