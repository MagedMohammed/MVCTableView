//
//  ViewController.swift
//  MVCtest
//
//  Created by Maged on 5/25/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController,tableViewDelegate {
    
    @IBOutlet weak var userTable: UITableView!
    var UsersDataApi = collectData()
    var UsersData = [userData]()
    let TableViewDelegate = collectData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewDelegate.getData()
        TableViewDelegate.delegate = self as tableViewDelegate
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = userTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.setData(data: [UsersData[indexPath.row]] )
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UsersData.count
    }
    func getDataFromApi(dataArr: [userData]) {
        self.UsersData = dataArr
        self.userTable.reloadData()
    }
}

