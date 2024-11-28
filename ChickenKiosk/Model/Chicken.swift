//
//  MockChicken.swift
//  ChickenKiosk
//
//  Created by EMILY on 26/11/2024.
//

import UIKit

struct Chicken: Hashable {
    let name: String
    let price: Int
    let imageURL: String
    
    var image: UIImage? {
        UIImage(named: imageURL)
    }
    
    var priceText: String {
        "\(price.formatted(.number))원"
    }
}

enum ChickenSeries {
    case honey
    case red
    case kyochon
    
    var title: String {
        switch self {
        case .honey: "허니시리즈"
        case .red: "레드시리즈"
        case .kyochon: "교촌시리즈"
        }
    }
    
    var chickens: [Chicken] {
        switch self {
        case .honey:
            [
                .init(name: "허니오리지날", price: 19000, imageURL: "honeyOriginal"),
                .init(name: "허니콤보", price: 23000, imageURL: "honeyCombo"),
                .init(name: "허니순살", price: 23000, imageURL: "honeyBoneless")
            ]
        case .red:
            [
                .init(name: "레드오리지날", price: 20000, imageURL: "redOriginal"),
                .init(name: "레드콤보", price: 23000, imageURL: "redCombo"),
                .init(name: "레드순살", price: 23000, imageURL: "redBoneless"),
                .init(name: "레드윙", price: 23000, imageURL: "redWing"),
                .init(name: "레드스틱", price: 23000, imageURL: "redStick")
            ]
        case .kyochon:
            [
                .init(name: "교촌오리지날", price: 20000, imageURL: "kyochonOriginal"),
                .init(name: "교촌콤보", price: 23000, imageURL: "kyochonCombo"),
                .init(name: "교촌순살", price: 23000, imageURL: "kyochonBoneless"),
                .init(name: "교촌윙", price: 23000, imageURL: "kyochonWing"),
                .init(name: "교촌스틱", price: 23000, imageURL: "kyochonStick")
            ]
        }
    }
}
