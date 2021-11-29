//
//  ProfileHeader.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/27.
//

import Foundation
import UIKit
import SnapKit

class ProfileHeader: UICollectionReusableView {

    var profileImgView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "restaurant_2")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        return imageView
    }()

    var profileName: UILabel = {
        let label = UILabel()
        label.text = "Spoonok"
        label.font = UIFont(name: label.font.fontName, size: 25)
        label.textColor = .black

        return label
    }()

    var hStack_buttons: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 50

        return stackView
    }()

    var menuButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "text.book.closed"), for: .normal)
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.tintColor = .black

        return button
    }()

    var vStack_spoon: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 5

        return stackView
    }()

    var spoonButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "tuningfork"), for: .normal)
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.tintColor = .black

        return button
    }()

    var labelSpoons: UILabel = {
        let label = UILabel()
        label.text = "149"
        label.font = UIFont(name: label.font.fontName, size: 20)
        label.textColor = .black

        return label
    }()

    var mapButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "map"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.tintColor = .black

        return button
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
        
        addSubview(profileImgView)
        addSubview(profileName)
        addSubview(hStack_buttons)
        hStack_buttons.addArrangedSubview(vStack_spoon)
        hStack_buttons.addArrangedSubview(menuButton)
        hStack_buttons.addArrangedSubview(mapButton)
        vStack_spoon.addArrangedSubview(spoonButton)
        vStack_spoon.addArrangedSubview(labelSpoons)


        profileImgView.snp.makeConstraints { maker in
            maker.top.equalToSuperview().offset(20)
            maker.centerX.equalToSuperview()
            maker.height.equalTo(160)
            maker.width.equalTo(150)
        }

        profileName.snp.makeConstraints { maker in
            maker.top.equalTo(profileImgView.snp.bottom).offset(10)
            maker.centerX.equalToSuperview()
        }

        hStack_buttons.snp.makeConstraints { maker in
            maker.top.equalTo(profileName.snp.bottom).offset(20)
            maker.centerX.equalToSuperview()
        }

        menuButton.snp.makeConstraints { maker in
            maker.width.height.equalTo(60)
        }

        spoonButton.snp.makeConstraints { maker in
            maker.width.height.equalTo(40)
        }

        mapButton.snp.makeConstraints { maker in
            maker.width.height.equalTo(60)
        }


    }
}



#if DEBUG

import SwiftUI
struct ProfileHeader_Preview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            return ProfileHeader()
        }.previewLayout(.sizeThatFits)
    }
}

#endif
