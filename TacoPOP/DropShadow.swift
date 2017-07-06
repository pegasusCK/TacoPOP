//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Chihkao Yu on 7/6/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import Foundation
import UIKit

protocol DropShadow {
    
}

extension DropShadow where Self: UIView {
    
    //constrain extension to a certain type -> in this case, UIView
    //extensions/protocols -> capital S
    
    func addDropShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
