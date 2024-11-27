//
//  CartTableViewCell.swift
//  ChickenKiosk
//
//  Created by eden on 11/28/24.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    private let menuLabel = UILabel()
    private let minusButton = UIButton()
    private let quantityLabel = UILabel()
    private let plusButton = UIButton()
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
        
        minusButton.setTitle("-", for: .normal)
        minusButton.setTitleColor(.black, for: .normal)
        minusButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        quantityLabel.text = "1"
        quantityLabel.font = UIFont.systemFont(ofSize: 14)
        quantityLabel.textAlignment = .center
        
        plusButton.setTitle("+", for: .normal)
        plusButton.setTitleColor(.black, for: .normal)
        plusButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        priceLabel.font = UIFont.systemFont(ofSize: 14)
        
        let quantityStackView  = UIStackView(arrangedSubviews: [minusButton, quantityLabel, plusButton])
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
