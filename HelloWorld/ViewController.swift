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
    private var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 20
        redLens.alpha = 0.3
        yellowLens.alpha = 0.3
        greenLens.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        redLens.layer.cornerRadius = redLens.frame.width / 2
        yellowLens.layer.cornerRadius = yellowLens.frame.width / 2
        greenLens.layer.cornerRadius = greenLens.frame.width / 2
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
            break
        }
    }
}

