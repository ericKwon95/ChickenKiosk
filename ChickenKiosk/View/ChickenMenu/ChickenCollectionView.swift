//
//  ChickenCollectionView.swift
//  ChickenKiosk
//
//  Created by EMILY on 25/11/2024.
//

import UIKit

class ChickenCollectionView: UICollectionView {
    
    var series: ChickenSeries?
    let manager: OrderManager
    
    init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout, orderManager: OrderManager) {
        self.manager = orderManager
        super.init(frame: frame, collectionViewLayout: layout)
        setup()
        self.series = .honey
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func setup() {
        delegate = self
        dataSource = self
        register(ChickenCell.self, forCellWithReuseIdentifier: ChickenCell.identifier)
        
        layer.cornerRadius = 20.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.appSecondary.cgColor
    }
}



extension ChickenCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let series else { return 0 }
        return series.chickens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = dequeueReusableCell(withReuseIdentifier: ChickenCell.identifier, for: indexPath) as? ChickenCell,
            let series = series
        else { return UICollectionViewCell() }
        
        cell.bind(series.chickens[indexPath.item])
        
        return cell
    }
}

extension ChickenCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let index = indexPath.item
        guard let chicken = series?.chickens[index] else {
            return
        }
        if let index = manager.orders.firstIndex(where: { $0.menu == chicken }) {
            manager.orders[index].count += 1
        } else {
            let newOrder = Order(menu: chicken)
            manager.orders.append(newOrder)
        }
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