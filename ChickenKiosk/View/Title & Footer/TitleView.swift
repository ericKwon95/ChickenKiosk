//
//  TitleView.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/26/24.
//

import UIKit
import SnapKit

/// 타이틀 상수
fileprivate enum Constant {
    static let title = "꼬끼오스크"
}

/// 앱 타이틀을 나타내는 화면
final class TitleView: UIView {
    // MARK: - View Properties
    // 타이틀 이미지
    private let titleImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(resource: .title))
        return imageView
    }()
    
    // 타이틀 라벨
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Constant.title
        label.font = .systemFont(ofSize: 32, weight: .bold)
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not using storyboard")
    }
    
    // MARK: - Configuration
    // subview 추가 및 제약조건 설정
    private func configureUI() {
        let subViews: [UIView] = [
            titleImage,
            titleLabel
        ]
        
        subViews.forEach {
            self.addSubview($0)
        }
        
        titleImage.snp.makeConstraints { make in
            make.width.equalTo(44)
            make.height.equalTo(44)
            make.leading.equalTo(self.snp.leading)
            make.bottom.equalTo(self.snp.bottom)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(titleImage.snp.trailing).offset(10)
            make.trailing.equalTo(self.snp.trailing)
            make.bottom.equalTo(self.snp.bottom)
        }
    }
}
