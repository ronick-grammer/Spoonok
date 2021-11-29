//
//  GridView.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/26.
//

import Foundation
import UIKit
import SnapKit

class ProfileCell: UICollectionViewCell {

    var postImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "food_1"))
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        return imageView
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
        backgroundColor = .white
        addSubview(postImageView)
        
        postImageView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }

    }

    func configure(postImage: UIImage) {
        self.postImageView.image = UIImage(named: "food_1")
    }

}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct ProfileGridViewCell_Preview: PreviewProvider{
    static var previews: some View {
        UIViewPreview {
            return ProfileCell()
            
        }.previewLayout(.sizeThatFits)
    }
}
#endif


