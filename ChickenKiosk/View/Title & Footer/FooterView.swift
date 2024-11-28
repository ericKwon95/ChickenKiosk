//
//  FooterView.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/26/24.
//

import UIKit
import SnapKit

/// 키오스크 하단 버튼을 나타내는 뷰
final class FooterView: UIView {
    // MARK: - View Properties
    // 주문 취소 버튼
    let cancelOrderButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        var titleContainer = AttributeContainer()
        titleContainer.font = UIFont.boldSystemFont(ofSize: 22)
        configuration.attributedTitle = AttributedString("주문취소", attributes: titleContainer)
        configuration.cornerStyle = .capsule
        configuration.baseBackgroundColor = .black
        configuration.baseForegroundColor = .white
        let button = UIButton(configuration: configuration)
        return button
    }()
    
    // 주문하기 버튼
    let confirmOrderButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        var titleContainer = AttributeContainer()
        titleContainer.font = UIFont.boldSystemFont(ofSize: 22)
        configuration.attributedTitle = AttributedString("주문하기", attributes: titleContainer)
        configuration.cornerStyle = .capsule
        configuration.baseBackgroundColor = UIColor(resource: .appPrimary)
        configuration.baseForegroundColor = .black
        let button = UIButton(configuration: configuration)
        return button
    }()
    
    // 주문 취소 및 주문하기 버튼을 감싸는 스택 뷰
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            cancelOrderButton,
            confirmOrderButton
        ])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 9
        return stackView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not using storyboard")
    }
    
    // MARK: - Configurations
    
    private func configureUI() {
        let subviews = [
            contentStackView
        ]
        
        subviews.forEach {
            self.addSubview($0)
        }
        
        contentStackView.snp.makeConstraints { make in
            make.leading.equalTo(self.snp.leading)
            make.trailing.equalTo(self.snp.trailing)
            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)
        }
    }
}
