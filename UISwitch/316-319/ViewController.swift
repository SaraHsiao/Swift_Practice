//
//  ViewController.swift
//  UISwitch
//
//  Created by KaFeiDou on 2017/7/17.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fullScreenSize = UIScreen.main.bounds.size
        
        mySwitch.thumbTintColor = UIColor.orange
        
        mySwitch.tintColor = UIColor.blue
        
        mySwitch.onTintColor = UIColor.green
        
        mySwitch.addTarget(self, action: #selector(onChanged), for: .valueChanged)
        
        mySwitch.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.5)
        
        self.view.addSubview(mySwitch)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onChanged(_ sender: AnyObject) {
        let tempSwitch = sender as! UISwitch
        
        if tempSwitch.isOn {
            self.view.backgroundColor = UIColor.blue
        } else {
            self.view.backgroundColor = UIColor.green
        }
    }
    
}

