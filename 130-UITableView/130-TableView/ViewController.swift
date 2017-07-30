//
//  ViewController.swift
//  130-TableView
//
//  Created by KaFeiDou on 2017/7/30.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    func setUpUI() {
        
        //create a UITableView
        let tv = UITableView(frame: view.bounds, style: .plain)
        
        //add on view
        self.view.addSubview(tv)
        
        //cell
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        
        //dataSources
        tv.dataSource = self
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        
        cell.textLabel?.text = "Hello... \(indexPath.row)"

        
        
        return cell
    }
    

}

