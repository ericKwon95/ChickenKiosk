//
//  SumView.swift
//  ChickenKiosk
//
//  Created by t2023-m0019 on 11/26/24.
//

import UIKit
import SnapKit

final class SumView: UIView {
    let titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
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
        titleLabel.text = "배달팁"
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
        stackView.spacing = 8
        return stackView
    }()
    
    /// 주문금액 데이터 Label
    var orderAmount: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 12, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.text = "23,000"
        return titleLabel
    }()
    
    /// 배달팁 고정 Label
    var deliveryTips: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 12, weight: .regular)
        titleLabel.textColor = .black
        titleLabel.text = "5,000"
        return titleLabel
    }()
    
    /// 총 주문금액 데이터 Label
    var totalOrderAmount: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        titleLabel.textColor = .black
        titleLabel.text = "28,000"
        return titleLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SumView {
    func setupUI() {
        self.backgroundColor = .gray
        addSubViews([titleStackView, valueStackView])
        titleStackView.addArrangedSubViews([orderAmountTitle,
                                            deliveryTipsTitle,
                                            totalOrderAmountTitle])
        
        valueStackView.addArrangedSubViews([orderAmount,
                                            deliveryTips,
                                            totalOrderAmount])
    }
    
    // TODO: - 추후 여백 조정
    func setupConstraints() {
        titleStackView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
        
        valueStackView.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.top.bottom.equalToSuperview()
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

