//
//  ChickenCollectionView.swift
//  ChickenKiosk
//
//  Created by EMILY on 25/11/2024.
//

import UIKit

class ChickenCollectionView: UICollectionView {
    
}

extension ChickenCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

extension ChickenCollectionView: UICollectionViewDelegate {
    
}
