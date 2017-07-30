//
//  ViewController.swift
//  UIAlertController
//
//  Created by KaFeiDou on 2017/7/15.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fullScreeSize = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Simple
        var myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        myButton.backgroundColor = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        myButton.center = CGPoint(x: fullScreeSize.width * 0.5, y: fullScreeSize.height * 0.15)
        myButton.setTitle("簡單提示", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.addTarget(nil, action: #selector(simpleAction), for: .touchUpInside)
        self.view.addSubview(myButton)
        
        
        //Send Out
        myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        myButton.backgroundColor = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        myButton.center = CGPoint(x: fullScreeSize.width * 0.5, y: fullScreeSize.height * 0.3)
        myButton.setTitle("送出", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.addTarget(nil, action: #selector(sendOut), for: .touchUpInside)
        self.view.addSubview(myButton)
        
        
        //Delete
        myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        myButton.backgroundColor = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        myButton.center = CGPoint(x: fullScreeSize.width * 0.5, y: fullScreeSize.height * 0.45)
        myButton.setTitle("刪除", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.addTarget(nil, action: #selector(deleteWord), for: .touchUpInside)
        self.view.addSubview(myButton)
        
        
        //Login
        myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        myButton.backgroundColor = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        myButton.center = CGPoint(x: fullScreeSize.width * 0.5, y: fullScreeSize.height * 0.6)
        myButton.setTitle("登入", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.addTarget(nil, action: #selector(login), for: .touchUpInside)
        
        self.view.addSubview(myButton)
        
        
        //ActionSheet
        myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        myButton.backgroundColor = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        myButton.center = CGPoint(x: fullScreeSize.width * 0.5, y: fullScreeSize.height * 0.75)
        myButton.setTitle("底部提示", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.addTarget(nil, action: #selector(actionSheet), for: .touchUpInside)
        
        self.view.addSubview(myButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Simple
    func simpleAction() {
        let alertController = UIAlertController(title: "提示", message: "一個簡單的提示，請按確認繼續", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "確認", style: .default) { (action) in
            print("按下確認，closure裡面的動作")
        }
        alertController.addAction(okAction)
        self.show(alertController, sender: nil)
    }
    //Send Out
    func sendOut() {
        let alertCotroller = UIAlertController(title: "送出", message: "確定要送出了嗎？", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "送出", style: .default) { (action) in
            print("按下送出，closure裡面的動作")
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel) { (action) in
            print("按下取消，closure裡面的動作")
        }
        alertCotroller.addAction(okAction)
        alertCotroller.addAction(cancelAction)
        self.show(alertCotroller, sender: nil)
    }
    //Delete
    func deleteWord() {
        let alertController = UIAlertController(title: "刪除", message: "刪除字樣會變紅色的", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .default) { (action) in
            print("按下取消，closure裡面的動作")
        }
        let deleteAction = UIAlertAction(title: "刪除", style: .destructive) { (action) in
            print("按下刪除，closure裡面的動作")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(deleteAction)
        self.show(alertController, sender: nil)
    }
    //Login
    func login() {
        let alertController = UIAlertController(title: "登入", message: "請輸入帳號與密碼", preferredStyle: .alert)
        alertController.addTextField { (txtField:UITextField!) in
            txtField.placeholder = "帳號"
        }
        alertController.addTextField { (txtField:UITextField!) in
            txtField.placeholder = "密碼 "
            
            txtField.isSecureTextEntry = true
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        
        let okAction = UIAlertAction(title: "登入", style: .default) { (action) in
            let acc = (alertController.textFields?.first)!
            let password = (alertController.textFields?.last)!
            print("輸入的帳號為：\(String(describing: acc.text))")
            print("輸入的密碼為：\(String(describing: password.text))")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.show(alertController, sender: nil)
    }
    //ActionSheet
    func actionSheet() {
        let alertController = UIAlertController(title: "底部提示", message: "這個提示會從底部彈出來", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "確定", style: .default) { (action) in
            print("按下確定，closure裡面的動作")
        }
        let cancelAction = UIAlertAction(title: "取消", style: .default) { (action) in
            print("按下取消，closure裡面的動作")
        }
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.show(alertController, sender: nil)
    }
}
