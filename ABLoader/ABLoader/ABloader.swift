//
//  ABloader.swift
//  basicStart
//
//  Created by John Barnes on 8/14/16.
//  Copyright © 2016 Andress Barnes. All rights reserved.
//

import UIKit

class ABloader: UIView {
    
    
    
    init(frame: CGRect, color : UIColor?, vAnchor: CGFloat?)
    {
        super.init(frame: frame)
        
        let barAmount: Int = Int(frame.size.width)/12
        
        for index in 0...(barAmount - 1) {
            let rectFrame: CGRect = CGRectMake(0 + (12*CGFloat(index)), 100, 10, 10)
            let rectView : RectUIView = RectUIView(frame: rectFrame)
            rectView.layer.anchorPoint = CGPointMake(0.5, vAnchor!);
            rectView.barColor = color
            
            rectView.alpha = 0.0
            
            self.addSubview(rectView)
            
            NSTimer.scheduledTimerWithTimeInterval((0.02 * Double(index) + 0.2), target: self, selector: #selector(self.oscillateStart(_:)), userInfo:["view": rectView], repeats: false)
        }
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    func oscillateStart(vc: NSTimer)
    {
        let userInfo = vc.userInfo as! Dictionary<String, AnyObject>
        let tempView:UIView = (userInfo["view"] as! UIView)
        UIView.animateWithDuration(0.25, delay: 0.0, options: [], animations: {
            tempView.alpha = 1.0
            tempView.transform = CGAffineTransformMakeScale(1.0, 6.6)
            }, completion: {(value: Bool) in
                self.oscillateOut(tempView)
        })
        
    }


    func oscillateOut(vc: UIView)
    {
        UIView.animateWithDuration(0.25, delay: 0.0, options: [], animations: {
            //vc.alpha = 0.0
            vc.transform = CGAffineTransformMakeScale(1.0, 0.5)
            }, completion: {(value: Bool) in
                self.oscillateIn(vc)
        })
        
    }


    func oscillateIn(vc: UIView)
    {
        UIView.animateWithDuration(0.25, delay: 0.0, options: [], animations: {
            //vc.alpha = 1.0
            vc.transform = CGAffineTransformMakeScale(1.0, 3.6)
            }, completion: {(value: Bool) in
                self.oscillateOut(vc)
        })
        
    }

}
