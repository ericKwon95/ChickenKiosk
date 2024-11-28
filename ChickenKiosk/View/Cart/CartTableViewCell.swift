//
//  CartTableViewCell.swift
//  ChickenKiosk
//
//  Created by eden on 11/28/24.
//

import UIKit
import SnapKit

class CartTableViewCell: UITableViewCell {
    private let menuLabel = UILabel()
    private let decreaceQuantityButton = UIButton()
    private let quantityLabel = UILabel()
    private let increaseQuantityButton = UIButton()
    private let priceLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpCell () {
        // 메뉴, 수량, 가격
        menuLabel.font = UIFont.systemFont(ofSize: 14)
        
        decreaceQuantityButton.setTitle("-", for: .normal)
        decreaceQuantityButton.setTitleColor(.black, for: .normal)
        decreaceQuantityButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        quantityLabel.text = "1"
        quantityLabel.font = UIFont.systemFont(ofSize: 14)
        quantityLabel.textAlignment = .center
        
        increaseQuantityButton.setTitle("+", for: .normal)
        increaseQuantityButton.setTitleColor(.black, for: .normal)
        increaseQuantityButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        priceLabel.font = UIFont.systemFont(ofSize: 14)
        
        let quantityStackView  = UIStackView(arrangedSubviews: [decreaceQuantityButton, quantityLabel, increaseQuantityButton])
        quantityStackView.axis = .horizontal
        quantityStackView.spacing = 8
        
        // 메뉴, 수량, 가격 셀 StackView
        let cellStackView = UIStackView(arrangedSubviews: [menuLabel, quantityStackView, priceLabel])
        cellStackView.axis = .horizontal
        cellStackView.distribution = .equalSpacing
        cellStackView.alignment = .center
        cellStackView.spacing = 10
        
        contentView.addSubview(cellStackView)
        
        cellStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(16)
        }
    }
    
    func configure(with item: (String, Int)) {
        menuLabel.text = item.0
        priceLabel.text = "\(item.1)"
    }
}
