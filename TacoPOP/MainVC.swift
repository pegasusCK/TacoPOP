//
//  MainVC.swift
//  TacoPOP
//
//  Created by Chihkao Yu on 7/6/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //var declarations
    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        headerView.addDropShadow()
    }
}
