//
//  SideScrollingFeedCell.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/28.
//

import Foundation
import UIKit
import SnapKit

class SideScrollingFeedCell: UICollectionViewCell {
    
    let foodImg: UIImageView = {
        let imgView = UIImageView(image: UIImage(named: "pancake_1"))
        imgView.contentMode = .scaleAspectFill
        imgView.layer.cornerRadius = 15
        imgView.clipsToBounds = true
        
        return imgView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setLayout()
    }
    
    func setLayout() {
        addSubview(foodImg)
        
        foodImg.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
    }
    
    func configure(img: UIImage) {
        foodImg.image = img
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct SideScrollingFeedCell_Preview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            return SideScrollingFeedCell()
        }.previewLayout(.sizeThatFits)
    }
}
#endif
