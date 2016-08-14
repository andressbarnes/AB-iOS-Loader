//
//  RectUIView.swift
//  basicStart
//
//  Created by John Barnes on 8/14/16.
//  Copyright © 2016 Andress Barnes. All rights reserved.
//

import UIKit

class RectUIView: UIView {

    var barColor: UIColor?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func drawRect(rect: CGRect) {
        
        
        let parentViewBounds = self.bounds
        let parentViewWidth = CGRectGetWidth(parentViewBounds)
        let parentViewHeight = CGRectGetHeight(parentViewBounds)
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: parentViewWidth, height: parentViewHeight))
        
        
        barColor?.setFill()
        rectanglePath.fill()
    }

}
