# <img src="https://github.com/user-attachments/assets/87febc24-a6ae-42cd-af96-379b8925d2ee" width="40"> 6조 꼬끼오스크
## 📖 목차
🍀 [소개](#-소개) <br>
👨‍💻 [팀원](#-팀원) <br>
⏱️ [타임라인](#-타임라인) <br>
👀 [프로젝트 구조](#-프로젝트-구조) <br>
💻 [실행 화면](#-실행-화면) <br>
🧨 [트러블 슈팅](#-트러블-슈팅) <br>
👥 [팀 회고](#-팀-회고) <br>

</br>

## 🍀 소개
저희는 치킨 포장 주문 키오스크로 오프라인 매장에서 사용할 수 있는 키오스크앱을 만들었습니다.


</br>

## 👨‍💻 팀원
| 권승용 | 전지혜 | 서현욱 | 박유빈 | 박시연 |
| :--------: | :--------: |:--------: | :--------: |:--------: |
| <Img src = "https://github.com/user-attachments/assets/2d13dd2d-eb9f-4e77-9dc8-dc4bf95aa00d" width="60" height="60"> | <Img src = "https://github.com/user-attachments/assets/74b06357-f03b-4cbd-9bf7-caa32a5ee60d" width="60" height="60"> |<Img src = "https://github-production-user-asset-6210df.s3.amazonaws.com/89178363/390784163-a337f389-cd08-4653-bea7-a60d76b292a7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20241128%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241128T124129Z&X-Amz-Expires=300&X-Amz-Signature=e8ad958326770a9a47acf0415b330c4e71a2c94cb14d72609e252278949e3058&X-Amz-SignedHeaders=host" width="60" height="60"> | <Img src = "https://github-production-user-asset-6210df.s3.amazonaws.com/89178363/390780684-52167692-62ab-42ef-8877-a58bedd89ca4.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20241128%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241128T124147Z&X-Amz-Expires=300&X-Amz-Signature=c39c8cc1ba308234b7ea9def2ffbb60cdb40f8e80df33fac41d0eaecda4b2d5a&X-Amz-SignedHeaders=host" width="60" height="60"> |<Img src = "https://github.com/user-attachments/assets/a2e18766-42bb-4e61-8837-d9fd26c52aa8" width="60" height="60"> | 
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
│   │   └── 📦 ChickenCollectionView.swift
│   ├── 📂 MenuCategory
│   │   └── 🏷️ CategoryButton.swift
│   ├── 📂 Title & Footer
│   │   ├── 📜 FooterView.swift
│   │   └── 🏷️ TitleView.swift
│   ├── 📂 TotalPrice
│   │   └── 💰 SumView.swift
│   └── 📂 ViewController
│       └── 🖥️ KioskViewController.swift
```

</br>

## 💻 실행 화면
| 메인 화면 | 카테고리메뉴 | 메뉴 선택 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/ByiQ3SmPh.gif" width="250">|<img src="https://hackmd.io/_uploads/Hy6UnBmPn.gif" width="250">|<img src="https://hackmd.io/_uploads/BJyO3Hmwh.gif" width="250">|

| 장바구니추가 | 수량추가 | 수량삭제 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/ryu8ArmD2.gif" width="250">|<img src="https://hackmd.io/_uploads/HJFH0HmP2.gif" width="250">|<img src="https://hackmd.io/_uploads/Byefa1qOD3.gif" width="250">|

| 총합계 | 주문확인 | 주문취소 |
|:--------:|:--------:|:--------:|
|<img src="https://hackmd.io/_uploads/Hy090Smv3.gif" width="250">|<img src="https://hackmd.io/_uploads/rJkh0BXvn.gif" width="250">|<img src="https://hackmd.io/_uploads/B1i3CHXDn.gif" width="250">|


</br>

## 🧨 트러블 슈팅
1️⃣ **`디자인 패턴 정하기`** <br>
-
🔒 **문제점** <br>
문제점블라블라

<br>

🔑 **해결방법** <br>
해결방법블라블라
<br>

2️⃣ **2번 트러블슈팅** <br>
-
🔒 **문제점** <br>

<br>

🔑 **해결방법** <br>

<br>

## 👥 팀 회고
- [노션](https://www.notion.so/teamsparta/6-9eb42cacd3364cbd9f99b3dfdf4cba95?pvs=25)
- [피그마](https://www.figma.com/design/07N4brskmz7wXx7aRbgTA4/%EC%99%80%EC%9D%B4%EC%96%B4%ED%94%84%EB%A0%88%EC%9E%84?node-id=0-1&t=zDmvW6tLlifkHNJU-1)
