//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let footerView = FooterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureFooterViewUI()
    }
    
    /// 하단 뷰 subview에 추가 및 위치 설정
    func configureFooterViewUI() {
        view.addSubview(footerView)
        footerView.translatesAutoresizingMaskIntoConstraints = false
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
