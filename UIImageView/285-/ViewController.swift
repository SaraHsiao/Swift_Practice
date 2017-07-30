//
//  ViewController.swift
//  UIImageView
//
//  Created by KaFeiDou on 2017/7/15.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let firstScreenSize = UIScreen.main.bounds.size
        var myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        //First
        myImageView.image = UIImage(named: "IMG_3004.JPG")
        myImageView.center = CGPoint(x: firstScreenSize.width * 0.5, y: firstScreenSize.height * 0.15)
        self.view.addSubview(myImageView)
        
        //Second
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myImageView.image = UIImage(named: "IMG_2930.JPG")
        myImageView.center = CGPoint(x: firstScreenSize.width * 0.5, y: firstScreenSize.height * 0.35)
        self.view.addSubview(myImageView)
        
        //Third
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myImageView.image = UIImage(named: "IMG_2944.JPG")
        myImageView.center = CGPoint(x: firstScreenSize.width * 0.5, y: firstScreenSize.height * 0.55)
        self.view.addSubview(myImageView)
        
        //Fourth
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myImageView.image = UIImage(named: "IMG_2981.JPG")
        myImageView.center = CGPoint(x: firstScreenSize.width * 0.5, y: firstScreenSize.height * 0.8)
        myImageView.contentMode = .scaleAspectFill
        self.view.addSubview(myImageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

