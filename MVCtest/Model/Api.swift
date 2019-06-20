//
//  Api.swift
//  MVCtest
//
//  Created by Maged on 5/25/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

final class Api{
    weak var delegate:tableViewDelegate?

    func getUserData(complation: @escaping(_ user:[userData]?) -> (Void)){
        let url = URL(string:"https://jsonplaceholder.typicode.com/users")
        Alamofire.request(url!, method: .get, encoding: URLEncoding.default, headers: nil).responseJSON { (respons) in
            switch respons.result{
            case .success:
                let data = respons.result.value
                let parseJSON = JSON(data)
                guard let dataArray = parseJSON.array else{return}
                var Users = [userData]()
                for data in dataArray{
                    var users = userData()
                    users.id = data["id"].int ?? 0
                    users.name = data["name"].string ?? ""
                    users.email = data["email"].string ?? ""
                    Users.append(users)
                }
                print(Users)
                complation(Users)
            case .failure(let error):
                print(error)
                complation(nil)
                
            }
        }
        
        
        
        
        
        
        
    }
    
}
