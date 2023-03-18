//
//  ViewController.swift
//  TrafficLight
//
//  Created by Alexey Kanaev on 3/18/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        // Do any additional setup after loading the view.
    }


    @IBAction func changeLight(_ sender: UIButton) {
        if redLight.alpha != 1 {
            redLight.alpha = 1
            sender.setTitle("Next", for: .normal)
        }

        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        }
    }

}

