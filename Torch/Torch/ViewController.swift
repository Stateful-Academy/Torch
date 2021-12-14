//
//  ViewController.swift
//  Torch
//
//  Created by Karl Pfister on 12/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var powerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var isOn: Bool = false
    
    @IBAction func powerButtonTapped(_ sender: Any) {
        
        if isOn == true {
            view.backgroundColor = .black
            isOn = false
            powerButton.setTitle("Turn On", for: .normal)
            powerButton.setTitleColor(.white, for: .normal)
        } else {
            view.backgroundColor = .white
            isOn = true
            powerButton.setTitle("Turn Off", for: .normal)
            powerButton.setTitleColor(.black, for: .normal)
        }
    }
}
