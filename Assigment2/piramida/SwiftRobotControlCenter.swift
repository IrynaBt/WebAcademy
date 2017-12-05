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
        
        super.viewDidLoad()
        
    }
    
    //write your code here
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        piramida()
        put()
        
    }
    
    func piramida() {
        
        buildDiagonal1()
        turnRight()
        turnRight()
        move()
        buildDiagonal2()
        turnLeft()
        if frontIsClear {
            move()
            turnLeft()
            while rightIsClear {
                piramida()
            }
        }
    }
    
    
    
    func buildDiagonal1() {
        while rightIsClear {
            put()
            move()
            turnRight()
            move()
            turnLeft()
        }
        put()
    }
    
    func buildDiagonal2() {
        while frontIsClear {
            put()
            move()
            turnRight()
            move()
            turnLeft()
        }
        put()
        
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



