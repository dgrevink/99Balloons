//
//  ViewController.swift
//  99Balloons
//
//  Created by David Grevink on 2014-11-10.
//  Copyright (c) 2014 David Grevink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    var currentIndex = 0
    var balloonCounter = 99

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed(sender: AnyObject) {
        // process random image
        var randomIndex: Int
        do {
            randomIndex = Int(arc4random_uniform(UInt32(4)))
        } while currentIndex == randomIndex
        currentIndex = randomIndex
        mainImage.image = UIImage(named: "RedBalloon\(randomIndex+1).jpg" );

        // process backward counter
        if ( balloonCounter == 0 ) {
            balloonCounter = 99
        }
        nameLabel.text = "\(balloonCounter) Balloons"
        balloonCounter--
    }

}

