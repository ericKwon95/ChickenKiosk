//
//  ChickenCell.swift
//  ChickenKiosk
//
//  Created by EMILY on 25/11/2024.
//

import UIKit

class ChickenCell: UICollectionViewCell {
    static let identifier: String = "ChickenCell"
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        
        return view
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
}
