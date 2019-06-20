//
//  collectData.swift
//  MVCtest
//
//  Created by Maged on 5/25/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import Foundation
import UIKit

final class collectData{
    
    weak var delegate:tableViewDelegate?
    
    let apiRequest = Api()
    
    func getData() {
        var Users:[userData] = []
        apiRequest.getUserData { (users:[userData]?) -> (Void) in
            if let users = users{
                Users = users
                self.delegate?.getDataFromApi(dataArr: Users)
            }
        }
    }
    
    
}
