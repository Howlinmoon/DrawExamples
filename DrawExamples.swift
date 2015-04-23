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
        
        var rectangle = CGRectMake(50, 50, 200, 400)
        CGContextAddRect(context, rectangle)
        
        
        // Actually draw the line
        CGContextStrokePath(context)

        for var xCoord = 10; xCoord <= Int(screenWidth) / 2; xCoord += 10 {
            rectangle = CGRectMake(CGFloat(xCoord), CGFloat(xCoord), screenWidth - CGFloat(xCoord), screenHeight - CGFloat(xCoord))
            CGContextAddRect(context, rectangle)
            
            
            // Actually draw the line
            CGContextStrokePath(context)
            
        }

        


        
    }

}
