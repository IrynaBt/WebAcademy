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
        levelName = "L4H" // level name
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
        
        zebra() //L2C, L3C
        
    }
    
    func zebra() {
        moveToEnd()
        
        turnRight()
        if (frontIsClear) {
            move()
            if (frontIsClear) {
                move()
                turnRight()
                
                moveToEnd()
                
                turnLeft()
                if (frontIsClear) {
                    move()
                    if (frontIsClear) {
                        move()
                        turnLeft()
                        zebra()
                    }
                }
            }
        }
    }
    
    func moveToEnd () {
        while frontIsClear {
            put()
            move()
        }
        put()
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }

}
