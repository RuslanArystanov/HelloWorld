//
//  ViewController.swift
//  HelloWorld
//
//  Created by Руслан Арыстанов on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLens: UIView!
    @IBOutlet var yellowLens: UIView!
    @IBOutlet var greenLens: UIView!
    @IBOutlet var nextButton: UIButton!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 20
        redLens.layer.cornerRadius = 30
        yellowLens.layer.cornerRadius = 30
        greenLens.layer.cornerRadius = 30
        redLens.alpha = 0.3
        yellowLens.alpha = 0.3
        greenLens.alpha = 0.3
    }

    @IBAction func colorChange() {
        counter += 1
        
        switch counter {
        case 1:
            greenLens.alpha = 0.3
            redLens.alpha = 1
        case 2:
            redLens.alpha = 0.3
            yellowLens.alpha = 1
        case 3:
            yellowLens.alpha = 0.3
            greenLens.alpha = 1
            counter = 0
        default:
            counter = 0
        }
    }
}

