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
		levelName = "L22H" // level name - L2H
		
		super.viewDidLoad()
		
	}
	
	//write your code here
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
        
        completeСolumns()
       
        
	}
    
    func completeСolumns() {
        moveUp()
        fillCandiesEmptyPlace()
        moveToNextPeak()
        if (frontIsClear) {
            move()
            completeСolumns()
        }
        
    }
    
    func turnFaceUp() {
        turnLeft()
    }
    
    func moveToNextPeak() {
        move()
        move()
        move()
    }
    
    func putCandy() {
        if (!candyPresent) {
            put()
            move()
        } else {
            move()
        }
    }
    
    func fillCandiesEmptyPlace() {
        turnRight()
        while (frontIsClear) {
            putCandy()
        }
        
        if (!candyPresent) {
            put()
        }
        turnLeft()
    }
    
    func moveUp() {
        turnFaceUp()
        while frontIsClear {
            move()
        }
        turnRight()
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
	
	
}
