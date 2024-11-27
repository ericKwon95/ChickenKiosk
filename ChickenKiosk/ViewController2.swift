//
//  ViewController2.swift
//  ChickenKiosk
//
//  Created by t2023-m0149 on 11/27/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let segmentView = UIView()
    private let honeyButton = UIButton()
    private let redButton = UIButton()
    private let kyochonButton = UIButton()
    private let indicatorView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSegmentView()
    }
    
    private func setupSegmentView() {
        // SegmentView 추가
        view.addSubview(segmentView)
        segmentView.snp.makeConstraints {
            $0.width.equalTo(372)
            $0.height.equalTo(40)
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(150)
        }
        segmentView.backgroundColor = .clear
        segmentView.layer.cornerRadius = 10
        
        // IndicatorView 추가
        segmentView.addSubview(indicatorView)
        indicatorView.backgroundColor = .yellow
        indicatorView.layer.cornerRadius = 10
        indicatorView.snp.makeConstraints {
            $0.leading.top.bottom.equalToSuperview()
            $0.width.equalToSuperview().dividedBy(3) // 버튼 너비
        }
        
        // 버튼 배열
        let buttons = [honeyButton, redButton, kyochonButton]
        let titles = ["허니시리즈", "레드시리즈", "교촌시리즈"]
        
        // 버튼 설정
        for (index, button) in buttons.enumerated() {
            button.setTitle(titles[index], for: .normal)
            button.setTitleColor(.gray, for: .normal)
            button.setTitleColor(.black, for: .selected)
            button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
            button.tag = index
            button.addTarget(self, action: #selector(segmentTapped(_:)), for: .touchUpInside)
            segmentView.addSubview(button)
            
            button.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.width.equalToSuperview().dividedBy(3) // 각 버튼들의 너비를 균일하게 설정
                $0.leading.equalToSuperview().offset(index * Int(372 / 3)) // 버튼 위치를 균일하게 설정
            }
        }
        
        // 초기 상태 설정
        updateSelection(for: honeyButton)
    }
    
    // 선택 상태 업데이트
    @objc private func segmentTapped(_ sender: UIButton) {
        updateSelection(for: sender)
        
        // Indicator 위치 업데이트
        indicatorView.snp.remakeConstraints {
            $0.top.bottom.equalToSuperview()
            $0.leading.equalToSuperview().offset(sender.tag * Int(372 / 3))
            $0.width.equalToSuperview().dividedBy(3)
        }
        segmentView.layoutIfNeeded()
    }
    
    private func updateSelection(for button: UIButton) {
        // 모든 버튼 비활성화
        [honeyButton,redButton,kyochonButton].forEach { $0.isSelected = false }
        
        // 선택한 버튼 활성화
        button.isSelected = true
    }
}

