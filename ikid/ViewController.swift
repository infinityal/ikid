//
//  ViewController.swift
//  ikid
//
//  Created by 郑智健 on 5/3/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var  jokeLabel: UILabel!
    
    var jokeStatus = true
    var punchline: String = "A coconut on Vacation"
    var joke: String = "What is brown, hairy and wears sunglasses?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func flipBttn(_ sender: UIButton!) {
        if jokeStatus {
            jokeStatus = false
            jokeLabel.text = punchline
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        } else {
            jokeStatus = true
            jokeLabel.text = joke
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }


}

