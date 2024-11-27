//
//  UIView+Preview.swift
//  ChickenKiosk
//
//  Created by t2023-m0019 on 11/27/24.
//

import SwiftUI

// iOS 16.0 이하에서도 UIView를 Preview 사용 가능하도록 하는 익스텐션
#if DEBUG
extension UIView {
    private struct Preview: UIViewRepresentable {
        let view: UIView
        
        func makeUIView(context: Context) -> UIView {
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
        }
    }
    
    func toPreview() -> some View {
        Preview(view: self)
    }
}
#endif
