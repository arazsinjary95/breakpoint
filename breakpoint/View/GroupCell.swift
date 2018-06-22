//
//  GroupCell.swift
//  breakpoint
//
//  Created by Araz Sinjary on 6/22/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitle: UILabel!
    @IBOutlet weak var groupDesLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitle.text = title
        self.groupDesLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members."
    }

}
