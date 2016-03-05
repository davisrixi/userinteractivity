//
//  PhotoView.swift
//  Filterer
//
//  Created by Davis Rixi on 3/5/16.
//  Copyright © 2016 UofT. All rights reserved.
//

import UIKit

class PhotoView: UIImageView {

    var lastTouchTime: NSDate? = nil
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesMoved(touches, withEvent: event)
        /*if let touch = touches.first {
            let location = touch.locationInView(self)
            print("x:(\(location.x) y:(\(location.y)")
        }*/
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        let currentTime = NSDate()
        if let previousTime = lastTouchTime{
            if currentTime.timeIntervalSinceDate(lastTouchTime)<0.5{
                print("double tap!")
                lastTouchTime = nil
            }else{
                lastTouchTime = currentTime
            }
        }else{
            lastTouchTime = currentTime
        }
    }
    
    
}
