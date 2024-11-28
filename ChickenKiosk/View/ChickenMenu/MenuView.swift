//
//  File.swift
//  ChickenKiosk
//
//  Created by EMILY on 28/11/2024.
//

import UIKit

class MenuView: UIView {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ChickenCell.self, forCellWithReuseIdentifier: ChickenCell.identifier)
        
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        
        return collectionView
    }()
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = .red
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.hidesForSinglePage = true
        
        return pageControl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        addSubViews([collectionView, pageControl])
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        layer.cornerRadius = 20.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.appSecondary.cgColor
        
        collectionView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-8)
        }
        
        pageControl.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-5)
            $0.centerX.equalToSuperview()
        }
    }
}
