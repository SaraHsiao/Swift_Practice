//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by KaFeiDou on 2017/7/17.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fullScreenSize = UIScreen.main.bounds.size
        
        let mySegmentedControl = UISegmentedControl(items: ["Breakfast","Lunch","Dinner","After Dinner"])
        
        mySegmentedControl.tintColor = UIColor.black
        
        mySegmentedControl.backgroundColor = UIColor.lightGray
        
        mySegmentedControl.addTarget(self, action: #selector(onChanged), for: .valueChanged)
        
        mySegmentedControl.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.25)
        
        self.view.addSubview(mySegmentedControl)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onChanged() {
        
    }
    
}

