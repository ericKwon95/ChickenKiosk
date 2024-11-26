//
//  ChickenCell.swift
//  ChickenKiosk
//
//  Created by EMILY on 25/11/2024.
//

import UIKit
import SnapKit

class ChickenCell: UICollectionViewCell {
    static let identifier: String = "ChickenCell"
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        addSubviews()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        
        view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: 13)
        
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        
        label.font = .systemFont(ofSize: 12)
        
        return label
    }()
    
    private func addSubviews() {
        [imageView, nameLabel, priceLabel]
            .forEach {
                addSubview($0)
            }
    }
    
    private func layout() {
        imageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.height.equalTo(100)
            $0.centerX.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom)
            $0.centerX.equalToSuperview()
        }
        
        priceLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(5)
            $0.centerX.equalToSuperview()
        }
    }
    
    func bind(_ chicken: MockChicken) {
        imageView.image = chicken.image
        nameLabel.text = chicken.name
        priceLabel.text = chicken.priceText
    }
}
