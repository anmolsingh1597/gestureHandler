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

    }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer){
        let swipeGesture = gesture as UISwipeGestureRecognizer
        if swipeGesture.direction == UISwipeGestureRecognizer.Direction.left{
            print("Left Swiped")
        }
    }

}

