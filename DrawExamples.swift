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

        // create a path for drawing
        CGContextMoveToPoint(context, 0, 0)
        var halfWidth = screenWidth/2
        var halfHeight = screenHeight/2
        CGContextAddLineToPoint(context, halfWidth, halfHeight)
        
        var middle = context
        
        // Actually draw the line
        CGContextStrokePath(context)


        
    }

}
