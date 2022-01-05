//
//  ViewController.swift
//  Torch
//
//  Created by Karl Pfister on 12/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var powerButton: UIButton!
    
    var isOn: Bool = false
    
    @IBAction func powerButtonTapped(_ sender: UIButton) {
        /**
         Since isOn Is already `Bool` check to see if its equal to true is redundent. This is because its value is already `true` or `false`.
         */
        if isOn {
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
        
        // Stretch 1:- with Switch
//        switch isOn {
//        case true:
//            view.backgroundColor = .black
//            isOn = false
//            powerButton.setTitle("Turn On", for: .normal)
//            powerButton.setTitleColor(.white, for: .normal)
//        case false:
//            view.backgroundColor = .white
//            isOn = true
//            powerButton.setTitle("Turn Off", for: .normal)
//            powerButton.setTitleColor(.black, for: .normal)
//        }
        
        // Stretch 2:- No isOn Bool
//        if view.backgroundColor == .white {
//            view.backgroundColor = .black
//            powerButton.setTitle("Turn On", for: .normal)
//            powerButton.setTitleColor(.white, for: .normal)
//        } else {
//            view.backgroundColor = .white
//            powerButton.setTitle("Turn Off", for: .normal)
//            powerButton.setTitleColor(.black, for: .normal)
//        }
        
        // Strech 3:- Using Ternary
//        view.backgroundColor = view.backgroundColor == .black ?
//                                .white : .black
//
//        powerButton.setTitle(powerButton.titleLabel?.text == "Turn On" ?
//                             "Turn off" : "Turn On",
//                             for: .normal)
//
//        powerButton.setTitleColor(powerButton.titleLabel?.textColor == .white ?
//                                    .black : .white
//                                  , for: .normal)
        
        // Strech 4:- Don't use a button Outlet
//                if isOn {
//                    view.backgroundColor = .black
//                    isOn = false
//                    sender.setTitle("Turn On", for: .normal)
//                    sender.setTitleColor(.white, for: .normal)
//                } else {
//                    view.backgroundColor = .white
//                    isOn = true
//                    sender.setTitle("Turn Off", for: .normal)
//                    sender.setTitleColor(.black, for: .normal)
//                }
    }
}
