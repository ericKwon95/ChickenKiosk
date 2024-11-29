# <img src="https://github.com/user-attachments/assets/87febc24-a6ae-42cd-af96-379b8925d2ee" width="40"> 6조 꼬끼오스크
## 📖 목차
🍀 [소개](#-소개) <br>
👨‍💻 [팀원](#-팀원) <br>
⏱️ [타임라인](#-타임라인) <br>
✨ [주요 기능](#-주요-기능) <br>
🛠 [사용 기술](#-사용-기술) <br>
🔧 [요구사항](#-요구사항)  <br>
🚀 [실행 방법](#-실행-방법) <br>
👀 [프로젝트 구조](#-프로젝트-구조) <br>
💻 [실행 화면](#-실행-화면) <br>
🧨 [트러블 슈팅](#-트러블-슈팅) <br>
📚 [프로젝트를 통해 배운 것](#-프로젝트를-통해-배운-것) <br>
📖 [레퍼런스 및 학습 자료](#-레퍼런스-및-학습-자료) <br>
👥 [팀 회고](#-팀-회고) <br>


</br>

## 🍀 소개
이 프로젝트는 iOS 팀 협업을 통해 진행된 치킨 키오스크 UI 개발 프로젝트입니다. 사용자 친화적인 모바일 주문 환경을 제공하기 위해, 스타벅스와 맥딜리버리와 같은 실제 키오스크 및 모바일 주문 앱을 벤치마킹하여 UI와 기능을 설계하고 구현했습니다.

프로젝트의 목표는 사용자가 원하는 작업을 빠르고 정확하게 처리할 수 있는 구조를 만드는 것으로, 기술과 UX가 조화를 이루는 키오스크 애플리케이션을 만드는 데 중점을 두었습니다.

이번 프로젝트를 통해 저희 팀은 코드베이스 UI 설계와 iOS 협업 프로젝트 경험을 쌓으며, 사용자 경험(UX)을 기술적으로 풀어내는 과정을 경험했습니다. 결과물은 하나의 ViewController에서 메뉴 카테고리 바, 메뉴 리스트, 주문 내역 등 사용자에게 필요한 모든 기능을 직관적으로 제공할 수 있는 치킨 키오스크입니다.

## 👨‍💻 팀원
| 권승용 | 전지혜 | 서현욱 | 박유빈 | 박시연 |
| :--------: | :--------: |:--------: | :--------: |:--------: |
| <Img src = "https://github.com/user-attachments/assets/2d13dd2d-eb9f-4e77-9dc8-dc4bf95aa00d" width="60" height="60"> | <Img src = "https://github.com/user-attachments/assets/74b06357-f03b-4cbd-9bf7-caa32a5ee60d" width="60" height="60"> |<Img src = "https://github.com/user-attachments/assets/3c5c7f36-98cf-43a3-a782-f03776289d14" width="60" height="60"> | <Img src = "https://github.com/user-attachments/assets/0a8224e5-766b-4cdf-b418-a2a868361649" width="60" height="60"> |<Img src = "https://github.com/user-attachments/assets/a2e18766-42bb-4e61-8837-d9fd26c52aa8" width="60" height="60"> | 
|[Github Profile](https://github.com/ericKwon95) |[Github Profile](https://github.com/emilyj4482) |[Github Profile](https://github.com/hyunwook-seo) |[Github Profile](https://github.com/daydreamplace) |[Github Profile](https://github.com/sy0201) |

</br>

## ⏱️ 타임라인

|날짜|내용|
|:--:|--|
|2024.11.25.| - 와이어 프레임, 역할 담당 |
|2024.11.26.| - 네이밍 및 컨벤션 수정 <br> - test 병합 |
|2024.11.27.| - 뷰 UI 구현 <br> - Extension 구현 |
|2024.11.28.| - Order Manager 구현 <br> - 데이터 연동 <br> - 프로젝트 발표 자료 준비|

</br>

</br>

## ✨ 주요 기능
  
- 📝 **헤더**: 키오스크 이름과 귀여운 로고.
  
- 🍔 **메뉴 카테고리 바**: 허니시리즈, 레드시리즈, 교촌시리즈 카테고리 선택 기능 제공.
  
- 📱 **메뉴 안내**: 사용자에게 치킨 메뉴를 직관적으로 보여주는 뷰. **UICollectionView**를 활용해 구성.
  
- 🛒 **장바구니**: 선택한 메뉴를 확인하고, 수량을 조정하거나 주문을 취소하는 기능. **UITableView**를 활용해 구성.

- 💵 **주문 금액 계산**: 주문 금액, 포장 할인, 총 주문 금액을 실시간으로 계산하여 사용자에게 명확히 표시
  
- ❌ **취소 및 주문**: 전체 주문을 취소하거나 주문하는 버튼을 통해 사용자 흐름을 단순화.
    
</br>

## 🛠 사용 기술

* **Swift** & **UIKit**을 사용하여 코드베이스로 UI 구현.

* **SnapKit**을 사용하여 오토레이아웃을 효율적으로 설정.

* **UICollectionView** 및 **UITableView** 등을 활용하여 메뉴와 주문 내역을 직관적으로 표시.

* 협업 시 **Git Flow**를 사용하여 각 역할별 브랜치를 관리하고, 충돌을 방지하기 위한 커밋과 병합 규칙을 준수.

</br>

## 🔧 요구사항

- **Xcode 버전**: Xcode 16.1 이상
- **iOS 지원 버전**: iOS 16.0 이상
- **Swift 버전**: Swift 5 이상


</br>

## 🚀 실행 방법

1. **프로젝트 클론**: GitHub에서 프로젝트를 클론합니다.

  ```
  git clone https://github.com/ericKwon95/ChickenKiosk.git
  ```

2. **Xcode에서 열기**: Xcode를 열고, 클론한 프로젝트 폴더를 엽니다.
</br>

3. **의존성 설치**: 프로젝트에서 사용하는 의존성을 설치합니다.

- `SnapKit` 등 필요한 라이브러리를 CocoaPods 또는 Swift Package Manager로 설치합니다.
 </br>

4. **시뮬레이터 실행**: Xcode에서 빌드 타겟을 선택하고, iOS 시뮬레이터에서 실행합니다.
</br>
</br>

##  👀 프로젝트 구조
###  ℹ️ File Tree

```
📦 ChickenKiosk
├── 📂 App
│   ├── 📝 AppDelegate.swift
│   ├── 🎨 Assets.xcassets
│   ├── 📋 Info.plist
│   ├── 🖥️ LaunchScreen.storyboard
│   └── 📝 SceneDelegate.swift
├── 📂 Extension
│   ├── 🧩 UIColor+Extension.swift
│   ├── 🧩 UIStackView+Extension.swift
│   ├── 🧩 UIView+Extension.swift
│   ├── 🧩 UIView+Preview.swift
│   └── 🧩 UIViewController+Preview.swift
├── 📂 Model
│   ├── 🐔 Chicken.swift
│   ├── 📦 Order.swift
│   └── 🗂️ OrderManager.swift
├── 📂 View
│   ├── 📂 Cart
│   │   ├── 📊 CartHeaderStackView.swift
│   │   ├── 🗂️ CartTableViewCell.swift
│   │   └── 🛒 CartView.swift
│   ├── 📂 ChickenMenu
│   │   ├── 🍗 ChickenCell.swift
│   │   └── 🍽️ MenuView.swift
│   ├── 📂 MenuCategory
│   │   └── 🏷️ CategoryButton.swift
│   ├── 📂 Title & Footer
│   │   ├── 📜 FooterView.swift
│   │   └── 🏷️ TitleView.swift
│   ├── 📂 TotalPrice
│   │   └── 💰 SumView.swift
├── 📂 ViewController
│   └── 🖥️ KioskViewController.swift
```

</br>

## 💻 실행 화면
| 메인 화면 | 카테고리메뉴 | 메뉴 화면 |
|:--------:|:--------:|:--------:|
|<img src="https://github.com/user-attachments/assets/0bd0470e-b8ab-40e1-ac80-9a1cc3a3e713" width="250">|<img src="https://github.com/user-attachments/assets/214d2d1c-5099-4818-a8fc-9bd2c4feaff5" width="250">|<img src="https://github.com/user-attachments/assets/92168c8c-e42f-4dc0-ba77-015a27e22520" width="250">|

| 장바구니추가 | 수량추가 | 수량삭제 |
|:--------:|:--------:|:--------:|
|<img src="https://github.com/user-attachments/assets/7a00b033-e95a-41a0-bb62-c3196e54003e" width="250">|<img src="https://hackmd.io/_uploads/HJFH0HmP2.gif" width="250">|<img src="https://hackmd.io/_uploads/Byefa1qOD3.gif" width="250">|

| 총합계 | 주문확인 | 주문취소 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/Hy090Smv3.gif" width="250">|<img src="https://hackmd.io/_uploads/rJkh0BXvn.gif" width="250">|<img src="https://hackmd.io/_uploads/B1i3CHXDn.gif" width="250">|

<br>

## 📚 프로젝트를 통해 배운 것
이번 프로젝트에서는 **UI 구성에서의 명확한 개발 의도**, **협업을 위한 Git 사용법**, **코드베이스로 UI를 구성하는 방법** 등을 심도 깊게 학습했습니다. 또한 사용자 경험을 고려한 UI 설계와 그 중요성에 대해 깊이 고민하며, 앱의 직관적 사용성을 극대화하는 방법을 배울 수 있었습니다.

<br>

## 📖 레퍼런스 및 학습 자료
프로젝트 진행 과정에서 여러 키오스크 및 주문 앱 레퍼런스를 참고하였으며, 단순 코드 베끼기가 아닌 **구조 이해 및 학습용으로 활용**했습니다. 이 프로젝트를 통해 저희 팀은 온전한 실력을 쌓고 실제 서비스 개발에 대한 자신감을 얻게 되었습니다.

<br>

## 👥 팀 회고
- [노션](https://www.notion.so/teamsparta/6-9eb42cacd3364cbd9f99b3dfdf4cba95?pvs=25)
- [피그마](https://www.figma.com/design/07N4brskmz7wXx7aRbgTA4/%EC%99%80%EC%9D%B4%EC%96%B4%ED%94%84%EB%A0%88%EC%9E%84?node-id=0-1&t=zDmvW6tLlifkHNJU-1)
