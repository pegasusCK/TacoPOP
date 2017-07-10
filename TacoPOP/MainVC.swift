//
//  MainVC.swift
//  TacoPOP
//
//  Created by Chihkao Yu on 7/6/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    //var declarations
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //calling singleton class instance by using the name ds in this file
    var ds: DataService = DataService.instance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set DataService delegate and load data
        ds.delegate = self
        ds.loadDeliciousTacoData()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        //add drop shadow to title
        headerView.addDropShadow()
        
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
    }
    
    //will be called once data has finished loading
    func deliciousTacoDataLoaded() {
        
        print("Delicious Taco Data Loaded!")
    }
}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return ds.tacoArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 95, height: 95)
    }
}
