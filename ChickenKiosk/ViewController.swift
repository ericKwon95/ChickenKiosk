//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // cart 관련 뷰 선언
    let cartContainerView = UIView()
    let cartTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // cart 컨테이너 뷰 설정 호출
        setUpCartContainerView()
    }
    
    
    // cart 컨테이너 뷰 설정 함수
    func setUpCartContainerView() {
        // 컨테이너 뷰 추가 및 기본 설정
        view.addSubview(cartContainerView)
        cartContainerView.backgroundColor = .white
        cartContainerView.layer.cornerRadius = 10
        cartContainerView.layer.borderWidth = 1
        cartContainerView.layer.borderColor = UIColor.lightGray.cgColor
        
        // SnapKit 사용해 레이아웃 임의로 설정
        cartContainerView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(150)
            make.height.equalTo(200)
        }
        
        // 장바구니 label
        let cartLabel = UILabel()
        cartLabel.text = "장바구니"
        cartLabel.textAlignment = .left
        cartLabel.textColor = .black
        cartContainerView.addSubview(cartLabel)
        
        cartLabel.snp.makeConstraints{ make in
            make.left.equalToSuperview()
        }
    }
}
