//
//  TitleView.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/26/24.
//

import UIKit
import SnapKit

fileprivate enum Constant {
    static let title = "Chicken Kiosk"
}

final class TitleView: UIView {
    private let titleImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(resource: .title))
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Constant.title
        label.font = .systemFont(ofSize: 32, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("not using storyboard")
    }
    
    private func configureUI() {
        let subViews: [UIView] = [
            titleImage,
            titleLabel
        ]
        
        subViews.forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
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
