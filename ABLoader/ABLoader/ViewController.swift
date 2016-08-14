//
//  ViewController.swift
//  ABLoader
//
//  Created by John Barnes on 8/14/16.
//  Copyright © 2016 Andress Barnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let screenSize: CGRect = UIScreen.mainScreen().bounds

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //loader 1
        let loaderFrame : CGRect = CGRectMake(screenSize.width/2 - 100, screenSize.height/2 - 100, 200, 100)
        let loaderColor : UIColor = UIColor.blackColor()
        let loaderVerticalAnchor: CGFloat =  1.0
        let loader: ABloader = ABloader(frame: loaderFrame, color: loaderColor, vAnchor: loaderVerticalAnchor)
        self.view.addSubview(loader)
        
        
        //loader 2
        /*
        let loaderFrame2 : CGRect = CGRectMake(screenSize.width/2 - 100, screenSize.height/2, 50, 50)
        let loaderColor2 : UIColor = UIColor.blackColor()
        let loaderVerticalAnchor2: CGFloat =  0.5
        let loader2: ABloader = ABloader(frame: loaderFrame2, color: loaderColor2, vAnchor: loaderVerticalAnchor2)
        self.view.addSubview(loader2)
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

