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
		levelName = "L3C" // level name
		/*
         L0C - robot with block
         L2C - robot with walls
         L4H - robot with empty screen
         L3C
         */
		super.viewDidLoad()
		
	}
	
	//write your code here
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
        
        pickHils() //L2C, L3C
        
	}
    
    func pickHils() {
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
    
    /*func l0c() {
        
        /*for _ in 0..<14 {
         move()
         }*/
        /*while frontIsClear {
         put()
         move()
         }
         put()*/
        
        move()
        if frontIsClear {
            move()
            move()
            pick()
            turnRight()
            move()
            turnLeft()
            move()
            move()
            put()
            move()
            move()
        } else {
            turnRight()
            move()
            move()
            move()
            move()
            move()
            move()
            move()
            turnLeft()
        }
    }*/
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
	
	
}
