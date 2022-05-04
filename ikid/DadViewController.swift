//
//  DadViewController.swift
//  ikid
//
//  Created by 郑智健 on 5/3/22.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var  jokeLabel: UILabel!
    
    var jokeStatus = true
    var punchline: String = "Nothing, it just waved"
    var joke: String = "What did the ocean say to the beach?"
    
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
