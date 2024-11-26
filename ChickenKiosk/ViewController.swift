//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let layout = UICollectionViewFlowLayout()
    private lazy var collectionView = ChickenCollectionView(frame: .zero, collectionViewLayout: layout)

    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        print("view did load")
    }
    
    private func setCollectionView() {
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().offset(-16)
            $0.centerX.centerY.equalToSuperview()
            $0.height.equalTo(300)
        }
    }
}
