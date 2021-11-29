//
//  ViewController.swift
//  Spoonok
//
//  Created by RONICK on 2021/11/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        print("!!!!")
//        let vc = ProfileViewController(
//        self.present(vc, animated: false, completion: nil)
        
        view.backgroundColor = .white
    }
    
}




#if canImport(SwiftUI) && DEBUG

import SwiftUI

struct UIViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    
    let viewController: ViewController
    
    init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
        
    }
    
    func makeUIViewController(context: Context) -> ViewController {
        return viewController
        
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
        viewController.view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        viewController.view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
    }
}


struct UIViewPreview<View: UIView>: UIViewRepresentable {
    let view: View

    init(_ builder: @escaping () -> View) {
        view = builder()
    }

    // MARK: - UIViewRepresentable

    func makeUIView(context: Context) -> UIView {
        return view
    }

    func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
    }
}
#endif



