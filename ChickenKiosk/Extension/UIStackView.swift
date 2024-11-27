//
//  UIStackView.swift
//  ChickenKiosk
//
//  Created by t2023-m0019 on 11/27/24.
//

import UIKit

extension UIStackView {
    func addArrangedSubViews(_ views: [UIView]) {
        views.forEach { self.addArrangedSubview($0) }
    }
}
