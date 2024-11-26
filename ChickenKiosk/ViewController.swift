//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource {
    // 목데이터
    let cartItems = [("허니콤보", 23000), ("레드콤보", 25000), ("교촌콤보", 24000), ("레드순살", 26000), ("허니오리지날", 22000)]
    
    // cart 관련 뷰 선언
    let cartContainerView = UIView()
    let cartTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // cart 컨테이너 뷰 설정 호출
        setUpCartContainerView()
        
        // cart 테이블 뷰 설정 호출
        setUpCartTableView()
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
        
        // 총 갯수 label
        let itemCountLabel = UILabel()
        itemCountLabel.text = "총 100개"
        itemCountLabel.textAlignment = .right
        itemCountLabel.textColor = .black
        
        // 장바구니 label과 총 갯수 label을 StackView로 추가
        let cartHeaderStackView = UIStackView(arrangedSubviews: [cartLabel, itemCountLabel])
        cartHeaderStackView.axis = .horizontal
        cartHeaderStackView.distribution = .equalSpacing
        cartHeaderStackView.alignment = .center
        
        cartContainerView.addSubview(cartHeaderStackView)
        
        cartHeaderStackView.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
    
    // cart 테이블 뷰 설정 함수
    func setUpCartTableView() {
        cartContainerView.addSubview(cartTableView)
        cartTableView.dataSource = self
        cartTableView.register(UITableViewCell.self, forCellReuseIdentifier: "CartCell")
        cartTableView.separatorStyle = .singleLine
        
        cartTableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.leading.trailing.bottom.equalToSuperview().inset(10)
        }
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell") ?? UITableViewCell(style: .default, reuseIdentifier: "CartCell")
        let item = cartItems[indexPath.row]

        // 메뉴, 수량, 가격
        let menuLabel = UILabel()
        menuLabel.text = item.0
        menuLabel.font = UIFont.systemFont(ofSize: 14)
        
        let minusButton = UIButton()
        
        let quantityLabel = UILabel()
        
        let plusButton = UIButton()
        
        let priceLabel = UILabel()
        priceLabel.text = "\(item.1)"
        priceLabel.font = UIFont.systemFont(ofSize: 14)
        
        let quantityStackView  = UIStackView(arrangedSubviews: [minusButton, quantityLabel, plusButton])
        quantityStackView.axis = .horizontal
        
        // 메뉴, 수량, 가격 셀 StackView
        let cellStackView = UIStackView(arrangedSubviews: [menuLabel, priceLabel])
        cellStackView.axis = .horizontal
        cellStackView.distribution = .equalSpacing
        cellStackView.alignment = .center
        cellStackView.spacing = 10
        
        cell.contentView.addSubview(cellStackView)
        
        cellStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(16)
        }
        
        return cell
    }
}
