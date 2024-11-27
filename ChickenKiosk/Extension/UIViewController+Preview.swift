//
//  UIViewController+Preview.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/26/24.
//

import SwiftUI

// iOS 16.0 이하에서도 Preview 사용 가능하도록 하는 익스텐션
#if DEBUG
extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
        let viewController: UIViewController
        
        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        }
    }
    
    func toPreview() -> some View {
        Preview(viewController: self)
    }
}
#endif
