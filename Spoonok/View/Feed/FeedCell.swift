//
//  FeedCell.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/29.
//

import Foundation
import UIKit
import SnapKit

class FeedCell: UICollectionViewCell {
    
    let feedImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "restaurant_1"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setUp()
    }
    
    
    func setUp() {
        addSubview(feedImageView)
        
        feedImageView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
    }
    
}
