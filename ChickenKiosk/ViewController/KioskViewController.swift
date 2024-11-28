//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class KioskViewController: UIViewController {
    private let titleView = TitleView()
    
    let manager = OrderManager(orderDidSet: {})
    
    private let categoryView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 20
        return view
    }()
    
    private let buttons = [CategoryButton(.honey), CategoryButton(.red), CategoryButton(.kyochon)]
    
    private lazy var collectionView: ChickenCollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        let collectionView = ChickenCollectionView(frame: .zero, collectionViewLayout: layout, orderManager: manager)
        return collectionView
    }()
    
    private lazy var cartView = CartView(mananger: manager)
    private let sumView = SumView()
    private let footerView = FooterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
    }
    
    private func configureUI() {
        let subviews = [
            titleView,
            categoryView,
            collectionView,
            cartView,
            sumView,
            footerView,
        ]
        
        subviews.forEach {
            view.addSubview($0)
        }
        
        titleView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
            make.height.equalTo(50)
        }
        
        categoryView.snp.makeConstraints {
            $0.top.equalTo(titleView.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().offset(-16)
            $0.height.equalTo(40)
        }
        
        setupCategoryView()
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(categoryView.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().offset(-16)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(UIScreen.main.bounds.height / 3)
        }
        
        cartView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(collectionView.snp.bottom).offset(8)
        }
        
        sumView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
            make.top.equalTo(cartView.snp.bottom).offset(8)
            make.bottom.equalTo(footerView.snp.top).offset(-16)
            make.height.equalTo(70)
        }
        
        footerView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            make.height.equalTo(44)
        }
        
        manager.orderDidSet = { [weak self] in
            guard let self = self else { return }
            self.cartView.reloadData()
            self.sumView.updateTotal(totalPrice: (self.manager.totalPrice))
        }
    }
    
    private func setupCategoryView() {
        buttons.forEach {
            categoryView.addSubview($0)
            
            $0.snp.makeConstraints {
                $0.width.equalToSuperview().dividedBy(3)
                $0.height.equalToSuperview()
                $0.centerY.equalToSuperview()
            }
            
            $0.addTarget(self, action: #selector(categoryTapped(_:)), for: .touchUpInside)
        }

        buttons[0].snp.makeConstraints {
            $0.leading.equalToSuperview()
        }
        
        buttons[1].snp.makeConstraints {
            $0.centerX.equalToSuperview()
        }
        
        buttons[2].snp.makeConstraints {
            $0.trailing.equalToSuperview()
        }
        
        // 허니시리즈 버튼은 눌린 채로 시작
        setButtonSelected(for: buttons[0])
    }
}

extension KioskViewController {
    @objc func categoryTapped(_ sender: CategoryButton) {
        setButtonSelected(for: sender)
        collectionView.series = sender.series
        collectionView.reloadData()
    }
    
    private func setButtonSelected(for button: UIButton) {
        buttons.forEach {
            $0.backgroundColor = .clear
            $0.isSelected = false
        }
        
        button.backgroundColor = .appPrimary
        button.isSelected = true
    }
}

#if DEBUG
import SwiftUI
struct PreView: PreviewProvider {
    static var previews: some View {
        KioskViewController().toPreview()
    }
}
#endif
