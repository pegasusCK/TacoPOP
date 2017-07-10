//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Chihkao Yu on 7/10/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {
    
}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        
        return String(describing: self)
    }
}
