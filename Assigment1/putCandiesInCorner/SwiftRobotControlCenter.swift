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
        levelName = "L4H" // L4H/L55H/L555H
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
        
        putCandiesInCorner()
    }
    
    func putCandiesInCorner() {
        moveToWall()
        turnRight()
        moveToWall()
        while noCandyPresent {
            putOneCandy()
            runToNextCorner()
        }
    }
    
    func moveToWall() {
        while(frontIsClear) {
            move()
        }
    }
    
    func putOneCandy() {
        if (noCandyPresent) {
            put()
        }
    }
    
    func runToNextCorner() {
        while (frontIsBlocked) {
            turnRight()
        }
        
        moveToWall()
    }
    
}

