//
//  TableViewCell.swift
//  MVCtest
//
//  Created by Maged on 6/12/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setData(data:[userData]){
        self.userName.text = data.first!.name!
        self.userEmail.text = data.first!.email!
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
