//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Chihkao Yu on 7/10/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        
        self.taco = taco
        tacoImage.image = UIImage(named: "\(taco.proteinID.rawValue)_Tacos")
        tacoLabel.text = taco.productName
    }
}
