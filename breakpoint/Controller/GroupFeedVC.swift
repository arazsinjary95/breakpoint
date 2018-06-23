//
//  GroupFeedVC.swift
//  breakpoint
//
//  Created by Araz Sinjary on 6/23/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sendBtnView.bindToKeyboard()
    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWaspressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
