//
//  CartView.swift
//  ChickenKiosk
//
//  Created by eden on 11/27/24.
//

import UIKit
import SnapKit

class CartView: UIView, UITableViewDataSource {
    private let cartContainerView = UIView()
    private let cartTableView = UITableView()
    
    private var cartItems: [(String, Int)] = [
        ("허니콤보", 23000),
        ("레드콤보", 25000),
        ("교촌콤보", 24000),
        ("레드순살", 26000),
        ("허니오리지날", 22000)
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpCartContainerView()
        setUpCartTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // cart 컨테이너 뷰 설정 함수
    func setUpCartContainerView() {
        // 컨테이너 뷰 추가 및 기본 설정
        addSubview(cartContainerView)
        cartContainerView.backgroundColor = .white
        cartContainerView.layer.cornerRadius = 10
        cartContainerView.layer.borderWidth = 1
        cartContainerView.layer.borderColor = UIColor.lightGray.cgColor

        cartContainerView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
        }

        // CartHeaderStackView 추가
        let cartHeaderStackView = CartHeaderStackView(itemCount: cartItems.count)
        cartContainerView.addSubview(cartHeaderStackView)

        cartHeaderStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(15)
        }
    }
    
    // cart 테이블 뷰 설정 함수
    func setUpCartTableView() {
        cartContainerView.addSubview(cartTableView)
        cartTableView.dataSource = self
        cartTableView.register(CartTableViewCell.self, forCellReuseIdentifier: "CartCell")
        cartTableView.separatorStyle = .singleLine

        cartTableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.leading.trailing.bottom.equalToSuperview().inset(10)
        }
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartTableViewCell
        let item = cartItems[indexPath.row]
        cell.configure(with: item)
        return cell
    }
}
