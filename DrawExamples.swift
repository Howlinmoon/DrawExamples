//
//  DrawExamples.swift
//  DrawExamples
//
//  Created by jim Veneskey on 4/22/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class DrawExamples: UIView {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        //print ("Screen Width: \(screenWidth), Screen Height: \(screenHeight)"
            
        print ("Width: \(screenWidth)")
        print ("Height: \(screenHeight)")
        
        
        // need a context for drawing - our canvas so to speak..
        let context = UIGraphicsGetCurrentContext()
        // customize the context
        CGContextSetLineWidth(context, 3.0)
        CGContextSetStrokeColorWithColor(context, UIColor.purpleColor().CGColor)

        /*
        // straight line
        CGContextMoveToPoint(context, 0, 0)
        var halfWidth = screenWidth/2
        var halfHeight = screenHeight/2
        CGContextAddLineToPoint(context, halfWidth, halfHeight)
        */
        
        /* weird shape
        CGContextMoveToPoint(context, 50, 50)
        CGContextAddLineToPoint(context, 90, 130)
        CGContextAddLineToPoint(context, 180, 100)
        CGContextAddLineToPoint(context, 90, 60)
        CGContextAddLineToPoint(context, 50, 50)
        */
        
        /* basic rectangle
        var rectangle = CGRectMake(50, 50, 200, 400)
        CGContextAddRect(context, rectangle)
        
        
        // Actually draw the line
        CGContextStrokePath(context)
        */
        
        /* Bad attempt at drawing concentric boxes
        for var xCoord = 10; xCoord <= Int(screenWidth) / 2; xCoord += 10 {
            rectangle = CGRectMake(CGFloat(xCoord), CGFloat(xCoord), screenWidth - CGFloat(xCoord), screenHeight - CGFloat(xCoord))
            CGContextAddRect(context, rectangle)
            
            
            // Actually draw the line
            CGContextStrokePath(context)
            
        }
        */
        

        /*
        CGContextMoveToPoint(context, 250, 100)
        CGContextAddLineToPoint(context, 50, 250)
        CGContextAddLineToPoint(context, 250, 350)
        CGContextAddLineToPoint(context, 350, 250)
        CGContextAddLineToPoint(context, 250,100)
        
        // Actually draw the lines
        // CGContextStrokePath(context)
        
        CGContextSetFillColorWithColor(context, UIColor.redColor().CGColor)
        CGContextFillPath(context)
        
        */
        
        
        let birthdayCake = UIImage(named: "birthdayPicture.jpg")
        let rocket = UIImage(named: "Rocket.jpg")
        let legoMe = UIImage(named: "lego_me_small.png")
        
        /* draw normally
        let location = CGPointMake(25,25)
        rocket?.drawAtPoint(location)
        */
        
        // Add a background
        let entireScreen = UIScreen.mainScreen().bounds
        rocket?.drawInRect(entireScreen)
        

        
    }

}
