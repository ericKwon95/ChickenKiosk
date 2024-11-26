//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit

class ViewController: UIViewController {
    private let titleView = TitleView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
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
}


}
