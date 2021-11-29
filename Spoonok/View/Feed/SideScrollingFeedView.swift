//
//  SideScrollingFeedView.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/28.
//

import Foundation
import UIKit

class SideScrollingFeedView: UICollectionView {
    
    
    func setUp() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionViewLayout = layout
        
        backgroundColor = .white
        
        dataSource = self
        delegate = self
        
        register(SideScrollingFeedCell.self, forCellWithReuseIdentifier: "SideScrollingFeedCell")
        
    }
    
}

extension SideScrollingFeedView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SideScrollingFeedCell", for: indexPath) as! SideScrollingFeedCell
        

        return cell
    }
}

extension SideScrollingFeedView: UICollectionViewDelegate {
    
}

extension SideScrollingFeedView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (frame.width - 10) / 1.5
        
        return CGSize(width: width, height: width)

    }
}


#if DEBUG

import SwiftUI
struct SideScrollingFeedView_Preview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            let cv =  SideScrollingFeedView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
            cv.setUp()
            cv.reloadData()
            return cv
        }.previewLayout(.sizeThatFits)
    }
}

#endif
