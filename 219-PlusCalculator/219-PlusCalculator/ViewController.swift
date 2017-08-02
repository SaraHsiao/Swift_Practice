//
//  ViewController.swift
//  219-PlusCalculator
//
//  Created by KaFeiDou on 2017/8/2.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numTxtOne:UITextField?
    var numTxtTwo:UITextField?
    var resultLbl:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    func setupUI() -> () {
        
        let fullScreenSize = UIScreen.main.bounds.size
        
        // setting background Color
        let background = UIView(frame: CGRect(x: 0, y: 0, width: fullScreenSize.width, height: fullScreenSize.height))
        background.backgroundColor = UIColor.lightGray
        self.view.addSubview(background)
        
        //1. UITextField
        let txtOne = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        txtOne.backgroundColor = UIColor.white
        txtOne.borderStyle = .roundedRect
        txtOne.text = ""
        txtOne.textAlignment = .center
        
        let txtTwo = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        txtTwo.backgroundColor = UIColor.white
        txtTwo.borderStyle = .roundedRect
        txtTwo.text = ""
        txtTwo.textAlignment = .center
        
        self.view.addSubview(txtOne)
        self.view.addSubview(txtTwo)
        
        //use properties
        numTxtOne = txtOne
        numTxtTwo = txtTwo
        
        
        //2. UILabel
        let lblOne = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        lblOne.textAlignment = .center
        lblOne.text = "+"
        
        let lblTwo = UILabel(frame:CGRect(x: 240, y: 20, width: 20, height: 30))
        lblTwo.textAlignment = .center
        lblTwo.text = "="
        
        let lblResult = UILabel(frame: CGRect(x: 260, y: 20, width: 100, height: 30))
        lblResult.text = ""
        lblResult.textAlignment = .center
        
        //use properties
        resultLbl = lblResult
        
        self.view.addSubview(lblOne)
        self.view.addSubview(lblTwo)
        self.view.addSubview(lblResult)
        
        
        //3. UIButton
        let btnResult = UIButton()
        btnResult.setTitle("計算", for: UIControlState(rawValue: 0))
        btnResult.setTitleColor(UIColor.black, for: UIControlState(rawValue: 0))
        btnResult.setTitleShadowColor(UIColor.white, for: UIControlState(rawValue: 0))
        btnResult.center = view.center
        btnResult.sizeToFit()
        
        self.view.addSubview(btnResult)
        
        btnResult.addTarget(self, action: #selector(calc), for: .touchUpInside)
    }
    
    //get result
    func calc() {
        //make sure UIButton is workable
        print("function")
        print("\(numTxtOne?.text) 。\(numTxtTwo?.text)")
        
        //need to change type of TextField
        guard let num1 = Int(numTxtOne?.text ?? ""),
            let num2 = Int(numTxtOne?.text ?? "") else {
                
                print("Must input Number")
                return
        }
        resultLbl?.text = "\(num1 + num2)"
    }
    
}
