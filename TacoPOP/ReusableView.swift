//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Chihkao Yu on 7/10/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit

protocol ReusableView: class {

}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        
        return String(describing: self)
    }
}
