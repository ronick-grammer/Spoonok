//
//  ProfileView.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/25.
//

import Foundation
import UIKit
import SnapKit

private let headerIdentifier = "ProfileHeader"
private let gridCellIdentifier = "ProfileCell"

class ProfileViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("????")
        collectionView.backgroundColor = .white
        configureCollectionView()
    }
    
    func configureCollectionView() {
        collectionView.register(ProfileHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        
        collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: gridCellIdentifier)
        

    }
    
}

// MARK: - UICollectionViewDataSource

extension ProfileViewController {

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gridCellIdentifier, for: indexPath) as! ProfileCell

        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentifier, for: indexPath) as! ProfileHeader
        
        return header
    }
    
}

// MARK: - UICollectionViewDelegate

extension ProfileViewController {

}


// MARK: - UICollectionViewDelegateFlowLayout

extension ProfileViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 60) / 2

        return CGSize(width: width, height: width)

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

        return 20
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {

        return 20
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 320)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    
}


#if DEBUG

import SwiftUI
struct ProfileViewController_Preview: PreviewProvider {
    static var previews: some View {
        UIViewControllerPreview {
            let vc = ProfileViewController(collectionViewLayout: UICollectionViewFlowLayout())
            vc.view.backgroundColor = .white
            return vc
        }
    }
}

#endif
