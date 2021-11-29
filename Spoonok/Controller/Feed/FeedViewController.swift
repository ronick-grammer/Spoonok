//
//  FeedView.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/29.
//

import Foundation
import UIKit

class FeedViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
        
    }
}


// MARK - UICollectionViewDelegate
extension FeedViewController {
    
}

// MARK - UICollectionViewDataSource
extension FeedViewController {
    
}

// MARK - UICollectionViewDelegateFlowLayout
extension FeedViewController: UICollectionViewDelegateFlowLayout {
    
}
