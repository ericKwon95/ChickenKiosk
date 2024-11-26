//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let cartContainerView = UIView()
    let cartTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCartContainerView()
    }
    
    func setUpCartContainerView() {
        view.addSubview(cartContainerView)
        cartContainerView.backgroundColor = .white
        cartContainerView.layer.cornerRadius = 10
        cartContainerView.layer.borderWidth = 1
        cartContainerView.layer.borderColor = UIColor.lightGray.cgColor
        
        let cartLabel = UILabel()
        cartLabel.text = "장바구니"
        cartLabel.textAlignment = .left
        cartLabel.textColor = .black
        cartContainerView.addSubview(cartLabel)
        
        cartLabel.snp.makeConstraints{ make in
            make.left.equalToSuperview()
        }
        
        cartContainerView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(150)
            make.height.equalTo(200)
        }
    }
}
