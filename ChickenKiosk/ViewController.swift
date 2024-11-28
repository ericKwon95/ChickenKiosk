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
    
    // cart TableView 레이아웃 임의로 설정
    private func setUpCartView() {
        view.addSubview(cartView)
        cartView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(150)
            make.height.equalTo(250)
        }
    }

    private let titleView = TitleView()
    private let footerView = FooterView()
    private lazy var collectionView: ChickenCollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        let collectionView = ChickenCollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setCollectionView()
        view.backgroundColor = .white
        configureFooterViewUI()
        setUpCartView()
    }
    
    private func configureUI() {
        view.addSubview(titleView)
        
        titleView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
            make.height.equalTo(50)
        }
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

 	/// 하단 뷰 subview에 추가 및 위치 설정
    func configureFooterViewUI() {
        view.addSubview(footerView)
        footerView.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            make.height.equalTo(44)
        }
    }
}
    
#if DEBUG
import SwiftUI
struct PreView: PreviewProvider {
    static var previews: some View {
        ViewController().toPreview()
    }
}
#endif
