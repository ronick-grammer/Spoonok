//
//  FeedHeader.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/29.
//

import Foundation
import UIKit
import SnapKit

class FeedHeader: UICollectionReusableView {
    
    let sideScrollingFeedView: SideScrollingFeedView = {
       let collectionView = SideScrollingFeedView(
        frame: CGRect.zero,
        collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.setUp()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupLayout()
    }
    
    func setupLayout() {
        
        addSubview(sideScrollingFeedView)
        
        
        sideScrollingFeedView.snp.makeConstraints { maker in
            maker.top.equalToSuperview()
            maker.width.equalToSuperview()
            maker.height.equalTo(self.snp.width).dividedBy(1.5)
        }
        
    }
}

#if DEBUG
import SwiftUI

struct FeedHeader_Preview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            return FeedHeader()
        }.previewLayout(.sizeThatFits)
    }
}

#endif
