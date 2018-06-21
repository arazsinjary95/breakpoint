//
//  ShadowView.swift
//  breakpoint
//
//  Created by Araz Sinjary on 6/21/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 50
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
    }

}
