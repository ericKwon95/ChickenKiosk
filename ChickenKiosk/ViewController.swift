//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // SegmentedControl 생성
        let segmentedControl = UISegmentedControl(items: ["허니시리즈", "레드시리즈", "교촌시리즈"])
        segmentedControl.selectedSegmentIndex = 0 // 기본 선택된 세그먼트
        segmentedControl.backgroundColor = .lightGray // 배경색 설정
        segmentedControl.tintColor = .gray // 선택 색상 설정
        segmentedControl.addTarget(self, action: #selector(segmentChanged(_:)), for: .valueChanged)
        
        // SegmentedControl 추가
        view.addSubview(segmentedControl)
        
        // SnapKit을 사용한 제약 조건 설정
        segmentedControl.snp.makeConstraints {
            $0.width.equalTo(372)  // 너비
            $0.height.equalTo(40) // 높이
            $0.leading.equalToSuperview().offset(16) // 왼쪽에서 16만큼 떨어짐
            $0.top.equalToSuperview().offset(150)     // 위에서 150만큼 떨어짐
        }
    }
    
    @objc func segmentChanged(_ sender: UISegmentedControl) {
        print("Selected segment index: \(sender.selectedSegmentIndex)")
    }
}
