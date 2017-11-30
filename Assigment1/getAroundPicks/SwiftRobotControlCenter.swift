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
		levelName = "L3C" // level name L2C, L3C
    
		super.viewDidLoad()
		
	}
	
	//write your code here
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
        
        getAroundPeaks() //L2C, L3C
        
	}
    
    func getAroundPeaks() {
        for _ in 0..<14 {
            step()
        }
    }
    
    func step() {
        if frontIsClear {
            move()
        } else {
            turnRight()
            moveDown()
            uTurn()
            moveUp()
            turnRight()
        }
    }
    
    func moveDown() {
        while leftIsBlocked {
            move()
        }
    }
    
    func moveUp() {
        while frontIsClear {
            move()
        }
    }
    
    func uTurn() {
        turnLeft()
        move()
        turnLeft()
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
	
	
}
