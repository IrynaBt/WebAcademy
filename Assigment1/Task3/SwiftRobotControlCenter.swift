//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//all robor commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
	
	
	//in this function change levelName
	override func viewDidLoad() {
		levelName = "L11C" // level name L11C
    
		super.viewDidLoad()
		
	}
	
	//write your code here
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
        move()
        doubleCandies()
        
	}
    
    func doubleCandies() {
        if (candyPresent) {
            pick()
            doubleCandies()
            put()
            put()
        }
    }
}
