//
//  ChickenCollectionView.swift
//  ChickenKiosk
//
//  Created by EMILY on 25/11/2024.
//

import UIKit

class ChickenCollectionView: UICollectionView {
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: layout)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func setup() {
        delegate = self
        dataSource = self
        backgroundColor = .gray
        register(ChickenCell.self, forCellWithReuseIdentifier: ChickenCell.identifier)
    }
}

extension ChickenCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        MockChicken.honeySeries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: ChickenCell.identifier, for: indexPath) as? ChickenCell else { return UICollectionViewCell() }
        
        cell.bind(MockChicken.honeySeries[indexPath.item])
        
        return cell
    }
}

extension ChickenCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension ChickenCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 10) / 2
        let height = (collectionView.bounds.height - 10) / 2
        let size = CGSize(width: width, height: height)
        
        return size
    }
}
