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
        segmentedControl.backgroundColor = .clear // 배경색 설정
        segmentedControl.selectedSegmentTintColor = .yellow // 선택 색상 설정
        segmentedControl.addTarget(self, action: #selector(segmentChanged(_:)), for: .valueChanged)
        
        segmentedControl.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default) // 배경 제거
        segmentedControl.setBackgroundImage(UIImage(), for: .selected, barMetrics: .default) // 선택된 상태 배경 제거
        segmentedControl.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        // Divider 제거
        
        // Divider 제거 및 텍스트 스타일 변경
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.gray, // 비선택 색상 설정
            .font: UIFont.systemFont(ofSize: 14, weight: .regular)
        ]
        
        segmentedControl.setTitleTextAttributes(titleAttributes, for: .normal)
        
        let selectedTittleAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.black, // 선택 색상 설정
            .font: UIFont.boldSystemFont(ofSize: 14)
        ]
        segmentedControl.setTitleTextAttributes(selectedTittleAttributes, for: .selected)
        
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


