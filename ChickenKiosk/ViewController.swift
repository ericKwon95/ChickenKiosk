//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let cartView = CartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCartView()
    }
    
    // cart TableView 레이아웃 임의로 설정
    private func setUpCartView() {
        view.addSubview(cartView)
        cartView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(150)
            make.height.equalTo(250)
        }
    }
}
