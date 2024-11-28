//
//  SumView.swift
//  ChickenKiosk
//
//  Created by t2023-m0019 on 11/26/24.
//

import UIKit
import SnapKit

final class SumView: UIView {
    let containerView = UIView()
    
    let titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.spacing = 2
        return stackView
    }()
    
    let orderAmountTitle: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 12, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.text = "주문금액"
        return titleLabel
    }()
    
    let deliveryTipsTitle: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 12, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.text = " "
        return titleLabel
    }()
    
    let totalOrderAmountTitle: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 12, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.text = "총 주문금액"
        return titleLabel
    }()
    
    let valueStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .trailing
        stackView.distribution = .fill
        stackView.spacing = 2
        return stackView
    }()
    
    /// 주문금액 데이터 Label
    var orderAmount: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 12, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.text = "0"
        return titleLabel
    }()
    
    /// 배달팁 고정 Label
    var deliveryTips: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 12, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.text = " "
        return titleLabel
    }()
    
    /// 총 주문금액 데이터 Label
    var totalOrderAmount: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        titleLabel.textColor = .black
        titleLabel.text = "0"
        return titleLabel
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
        hideTogoDiscount()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateTotal(totalPrice: Int) {
        orderAmount.text = "\(totalPrice.formatted(.number))"
        totalOrderAmount.text = "\((totalPrice-3000).formatted(.number))"
        showTogoDiscount()
        // TODO: 메뉴 모두 제거 시 hide Discount
    }
    
    private func showTogoDiscount() {
        deliveryTipsTitle.text = "포장할인"
        deliveryTips.text = "-3,000"
    }
    
    private func hideTogoDiscount() {
        deliveryTipsTitle.text = " "
        deliveryTips.text = " "
    }
}

// MARK: - Setup UI

extension SumView {
    func setupUI() {
        containerView.backgroundColor = .white
        containerView.layer.borderWidth = 1
        containerView.layer.borderColor = UIColor.appSecondary.cgColor
        containerView.layer.cornerRadius = 20
        
        addSubViews([containerView,
                      titleStackView,
                      valueStackView])
        
        titleStackView.addArrangedSubViews([orderAmountTitle,
                                            deliveryTipsTitle,
                                            totalOrderAmountTitle])
        
        valueStackView.addArrangedSubViews([orderAmount,
                                            deliveryTips,
                                            totalOrderAmount])
    }
    
    // TODO: - 추후 여백 조정
    func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        titleStackView.snp.makeConstraints { make in
            make.leading.equalTo(containerView.snp.leading).offset(16)
            make.centerY.equalTo(containerView)
        }
        
        valueStackView.snp.makeConstraints { make in
            make.trailing.equalTo(containerView.snp.trailing).offset(-16)
            make.centerY.equalTo(containerView)
        }
    }
}

//#if DEBUG
//import SwiftUI
//struct MyView_Preview: PreviewProvider {
//    static var previews: some View {
//        SumView().toPreview().frame(width: 300, height: 200)
//    }
//}#endif
