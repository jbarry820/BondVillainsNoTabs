//
//  VillainCollectionViewController.swift
//  BondVillains
//
//  Created by James Barry on 10/13/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit

class VillainCollectionViewController: UICollectionViewController {
    
    // MARK: Properties
    
    // Get ahold of some villains, for the table
    // This is an array of Villain Instances
    let allVillains = Villain.allVillains
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: Collection View Data Source
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VillainCollectionViewCell", for: indexPath) as! VillainCollectionViewCell
        let villain = self.allVillains[(indexPath as NSIndexPath).row]
        
        //Set the name and image
        //cell.nameL
        
        return cell
    }
    
}
