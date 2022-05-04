//
//  PunViewController.swift
//  ikid
//
//  Created by 郑智健 on 5/3/22.
//

import UIKit

class PunViewController: UIViewController {

    @IBOutlet weak var  jokeLabel: UILabel!
    
    var jokeStatus = true
    var punchline: String = "He was in Seine"
    var joke: String = "Did you hear about the man who jumped off a bridge in France?"
    
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
