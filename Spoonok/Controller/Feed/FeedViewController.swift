//
//  FeedView.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/29.
//

import Foundation
import UIKit

class FeedViewController: UICollectionViewController {
    
    private let feedCellIdentifier = "FeedCell"
    private let headerIdentifier = "FeedHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: feedCellIdentifier)
        collectionView.register(FeedHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        
        
    }
}


// MARK - UICollectionViewDelegate
extension FeedViewController {
    
}

// MARK - UICollectionViewDataSource
extension FeedViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: feedCellIdentifier, for: indexPath) as! FeedCell
        
        return cell
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier, for: indexPath) as! FeedHeader
        
        return header
        
    }
    
}

// MARK - UICollectionViewDelegateFlowLayout
extension FeedViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 300)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 300)
    }
    
}

#if DEBUG

import SwiftUI
struct FeedViewController_Preview: PreviewProvider {
    static var previews: some View {
        UIViewControllerPreview {
            let vc = FeedViewController(collectionViewLayout: UICollectionViewFlowLayout())
            
            vc.collectionView.backgroundColor = .white
            
            return vc
        }
    }
}

#endif

