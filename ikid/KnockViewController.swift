//
//  KnockViewController.swift
//  ikid
//
//  Created by 郑智健 on 5/3/22.
//

import UIKit

class KnockViewController: UIViewController {

    @IBOutlet weak var  jokeLabel: UILabel!
    
    var jokeStatus: Int = 1
    var punchline: String = "Who’s there?"
    var joke: String = "Knock Knock!"
    var joke2: String = "Ray D"
    var punchline2: String = "Ray D or not, here I come"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func flipBttn(_ sender: UIButton!) {
        switch jokeStatus{
        case 1:
            jokeLabel.text = punchline
            jokeStatus = 2
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        case 2:
            jokeLabel.text = joke2
            jokeStatus = 3
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        case 3:
            jokeLabel.text = punchline2
            jokeStatus = 4
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        case 4:
            jokeLabel.text = joke
            jokeStatus = 1
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        default:
            jokeLabel.text = joke
        }
    }
}
