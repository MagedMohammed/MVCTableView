//
//  tableViewDelegate.swift
//  MVCtest
//
//  Created by Maged on 6/12/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import Foundation

protocol tableViewDelegate: class {
    
    func getDataFromApi(dataArr:[userData])
}
