//
//  ViewController.swift
//  test4
//
//  Created by 小西夏穂 on 2016/06/20.
//  Copyright © 2016年 小西夏穂. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myStepLabel: UILabel = UILabel(frame: CGRectMake(0,0,150,150))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Stepperの作成する.
        let myStepper: UIStepper = UIStepper()
        myStepper.center = CGPointMake(self.view.frame.width/2, 400)
        myStepper.backgroundColor = UIColor.grayColor()
        myStepper.tintColor = UIColor.whiteColor()
        myStepper.addTarget(self, action: "stepperOneChanged:", forControlEvents: UIControlEvents.ValueChanged)
        
        // 最小値, 最大値, 規定値の設定をする.
        myStepper.minimumValue = 0
        myStepper.maximumValue = 100
        myStepper.value = 0
        
        // ボタンを押した際に動く値の.を設定する.
        myStepper.stepValue = 1
        
        // Viewに追加する.
        self.view.addSubview(myStepper)
        
        // Labelを作成する.
        myStepLabel.backgroundColor = UIColor.cyanColor()
        myStepLabel.layer.masksToBounds = true
        myStepLabel.layer.cornerRadius = 75.0
        myStepLabel.textColor = UIColor.blackColor()
        myStepLabel.shadowColor = UIColor.grayColor()
        myStepLabel.font = UIFont.systemFontOfSize(CGFloat(20))
        myStepLabel.textAlignment = NSTextAlignment.Center
        myStepLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        myStepLabel.text = "\(myStepper.value)"
        
        // Viewの背景色を青にする.
        self.view.backgroundColor = UIColor.whiteColor()
        
        // viewにLabelを追加.
        self.view.addSubview(myStepLabel)
    }
    
    /*
     Stepperの値が変わったときに呼び出される.
     */
    internal func stepperOneChanged(stepper: UIStepper){
        myStepLabel.text = "\(stepper.value)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
