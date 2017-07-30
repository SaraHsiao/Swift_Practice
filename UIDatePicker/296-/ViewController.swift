//
//  ViewController.swift
//  UIDatePicker
//
//  Created by KaFeiDou on 2017/7/15.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myDatePicker:UIDatePicker!
    var myLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fullScreenSize = UIScreen.main.bounds.size
        
        //UIDatePicker
        myDatePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: fullScreenSize.width, height: 200))
        
        myDatePicker.datePickerMode = .dateAndTime
        myDatePicker.minuteInterval = 15
        myDatePicker.date = Date()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy HH:mm"
        
        let fromDateTime = formatter.date(from: "01-01-2001 00:00")
        myDatePicker.minimumDate = fromDateTime
        
        let endDateTime = formatter.date(from: "12-31-2020 23:59")
        myDatePicker.maximumDate = endDateTime
        
        myDatePicker.locale = Locale(identifier: "utf-8")
        myDatePicker.addTarget(self, action: #selector(datePickerChanged), for: .valueChanged)
        myDatePicker.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.4)
        
        self.view.addSubview(myDatePicker)
        
        
        //UILabel
        myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: fullScreenSize.width, height: 70))
        myLabel.backgroundColor = UIColor.darkGray
        myLabel.textColor = UIColor.white
        myLabel.textAlignment = .center
        myLabel.font = UIFont.boldSystemFont(ofSize: 36)
        myLabel.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.15)
        
        
        self.view.addSubview(myLabel)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UILabel & UIDatePicker
    func datePickerChanged () {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy HH:mm"
        
        myLabel.text = formatter.string(from: myDatePicker.date)
    }
    
    
}















