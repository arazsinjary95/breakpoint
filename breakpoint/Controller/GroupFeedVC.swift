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
    
    var group: Group?
    
    func initData(forGroup group: Group) {
        self.group = group
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sendBtnView.bindToKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: group!) { (returnedEmails) in
            self.membersLbl.text = returnedEmails.joined(separator: ", ")
        }
    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWaspressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
