//
//  ViewController.swift
//  gestureHandler
//
//  Created by Anmol singh on 2020-06-08.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let swipeLeft =  UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
    }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer){
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction{
        case UISwipeGestureRecognizer.Direction.left:
            print("Left Swiped")
        case UISwipeGestureRecognizer.Direction.right:
            print("Right Swiped")
        default:
            break
        }
//        if swipeGesture.direction == UISwipeGestureRecognizer.Direction.left{
//            print("Left Swiped")
//        }
    }
    
    // Shake Gesture
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake{
            print("Phone is shaking")
        }
    }

}

