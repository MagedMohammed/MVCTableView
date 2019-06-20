//
//  userData.swift
//  MVCtest
//
//  Created by Maged on 5/25/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import Foundation
struct userData{
    var id:Int?
    var name:String?
    var email:String?
    
    init(){}
    
    init(id:Int?,name:String,email:String){
        self.id = id
        self.name = name
        self.email = email
    }
    
    
    
}
