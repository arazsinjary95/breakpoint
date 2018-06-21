//
//  AuthVC.swift
//  breakpoint
//
//  Created by Araz Sinjary on 6/20/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
}
