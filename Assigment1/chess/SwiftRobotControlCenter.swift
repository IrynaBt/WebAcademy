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
        
        chess()
        
    }
    
    func chess() {
        if rightIsBlocked {
            putCandiesFromLeftToRight()
        } else {
            putCandiesFromTopToBottom0()
        }
    }
    
    func putCandiesFromLeftToRight() {
        while frontIsClear {
            put()
            move()
            if (frontIsClear) {
                move()
                put()
            }
        }
    }
    
    func putCandiesFromTopToBottom0() {
        turnRight()
        while frontIsClear {
            put()
            move()
            if (frontIsClear) {
                move()
                put()
            }
        }
        
    
        turnLeft()
        if frontIsClear {
            if candyPresent {
                move()
                putCandiesFromBottomToTop1()
            } else {
                move()
                putCandiesFromBottomToTop0()
            }
        }
    }
    
    func putCandiesFromTopToBottom1() {
        turnRight()
        while frontIsClear {
            move()
            put()
            if (frontIsClear) {
                move()
                put()
            }
        }
        
        turnLeft()
        if frontIsClear {
            if candyPresent {
                move()
                putCandiesFromTopToBottom1()
            } else {
                move()
                putCandiesFromTopToBottom0()
            }
        }
    }
    
    func putCandiesFromBottomToTop0() {
        turnLeft()
        while frontIsClear {
            put()
            move()
            
            if (frontIsClear) {
                move()
                put()
            }
        }
        
        turnRight()
        
        if frontIsClear {
            if candyPresent {
                move()
                putCandiesFromTopToBottom1()
            } else {
                move()
                putCandiesFromTopToBottom0()
            }
        }
    }
    
    func putCandiesFromBottomToTop1() {
        turnLeft()
        
        while frontIsClear {
            move()
            put()
            
            if (frontIsClear) {
                move()
            }
        }
        
        turnRight()
        
        if frontIsClear {
            if candyPresent {
                move()
                putCandiesFromTopToBottom1()
            } else {
                move()
                putCandiesFromTopToBottom0()
            }
        }
    }

    
    func moveLeft() {
        while frontIsClear {
            move()
        }
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
