//
//  CartHeaderView.swift
//  
//
//  Created by eden on 11/28/24.
//

import UIKit
import SnapKit

// CartHeaderView 클래스 정의
class CartHeaderView: UIStackView {
    private let cartLabel = UILabel()
    private let itemCountLabel = UILabel()
    
    init(itemCount: Int) {
        super.init(frame: .zero)
        setUpViews(itemCount: itemCount)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpViews(itemCount: Int) {
        // StackView 설정
        axis = .horizontal
        distribution = .equalSpacing
        alignment = .center
        
        // 장바구니 label 설정
        cartLabel.text = "장바구니"
        cartLabel.textAlignment = .left
        cartLabel.textColor = .black
        
        // 총 갯수 label 설정
        itemCountLabel.text = "총 \(itemCount)개"
        itemCountLabel.textAlignment = .right
        itemCountLabel.textColor = .black
        
        // StackView에 subviews 추가
        addArrangedSubview(cartLabel)
        addArrangedSubview(itemCountLabel)
    }
}
