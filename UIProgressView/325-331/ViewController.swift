//
//  ViewController.swift
//  325-331
//
//  Created by KaFeiDou on 2017/7/17.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myProgressView:UIProgressView!
    var myActivityIndicatorView:UIActivityIndicatorView!
    var myButton:UIButton!
    var myTimer:Timer!
    var count = 0
    var complete = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fullScreenSize = UIScreen.main.bounds.size
        
        //UIProgressView
        myProgressView = UIProgressView(progressViewStyle: .default)
        myProgressView.frame = CGRect(x: 0, y: 0, width: fullScreenSize.width * 0.8, height: 50)
        myProgressView.progressTintColor = UIColor.blue
        myProgressView.trackTintColor = UIColor.orange
        myProgressView.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.2)
        self.view.addSubview(myProgressView)
        
        //UIActivityIndicatorView
        myActivityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        myActivityIndicatorView.frame = CGRect(x: 0, y: 0, width: fullScreenSize.width * 0.2, height: 50)
        myActivityIndicatorView.color = UIColor.red
        myActivityIndicatorView.backgroundColor = UIColor.gray
        myActivityIndicatorView.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.4)
        self.view.addSubview(myActivityIndicatorView)
        
        //UIButton
        myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        myButton.backgroundColor = UIColor.blue
        myButton.setTitle("Reset", for: .normal)
        myButton.addTarget(nil, action: #selector(clickButton), for: .touchUpInside)
        myButton.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.65)
        self.view.addSubview(myButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    func clickButton() {
        myButton.isEnabled = false
        myProgressView.progress = 0
        myActivityIndicatorView.startAnimating()
        
        myTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showProgress), userInfo: "test", repeats: true)
    }
    func showProgress (_sender: Timer) {
        count += 5
        myProgressView.progress = Float(count)/Float(complete)
        if count >= complete {
            myTimer?.invalidate()
            myTimer = nil
            myActivityIndicatorView.stopAnimating()
            myButton.isEnabled = true
        }
    }
}

