//
//  CategoryButton.swift
//  ChickenKiosk
//
//  Created by EMILY on 28/11/2024.
//

import UIKit

class CategoryButton: UIButton {
    
    let series: ChickenSeries
    
    init(_ series: ChickenSeries) {
        self.series = series
        super.init(frame: .zero)
        
        setTitle(series.title, for: .normal)
        setTitleColor(.gray, for: .normal)
        setTitleColor(.black, for: .selected)
        
        titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        
        layer.cornerRadius = 20
        
        isSelected = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
