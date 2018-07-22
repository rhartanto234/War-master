//
//  ViewController.swift
//  War
//
//  Created by ilabuser on 7/15/18.
//  Copyright © 2018 Anson Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!

    var LeftScore = 0
    var RightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DealTapped(_ sender: Any) {
    
        let LeftRandomNumber = arc4random_uniform(13) + 2
        print("left random number is: \(LeftRandomNumber)")
        
        let RightRandomNumber = arc4random_uniform(13) + 2
        print("right random number is: \(RightRandomNumber)")

        LeftImageView.image = UIImage(named: "card\(LeftRandomNumber)")
        
        RightImageView.image = UIImage(named: "card\(RightRandomNumber)")

        if LeftRandomNumber > LeftRandomNumber {
            LeftScore += 1
            LeftScoreLabel.text = String(LeftScore)
        }
        else if RightRandomNumber > LeftRandomNumber {
            RightScore += 1
            RightScoreLabel.text = String(RightScore)
        }
        else if LeftRandomNumber == RightRandomNumber {
            
            
        }
        
        
    }
}
        


