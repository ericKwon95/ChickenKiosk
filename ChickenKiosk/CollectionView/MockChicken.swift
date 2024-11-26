//
//  MockChicken.swift
//  ChickenKiosk
//
//  Created by EMILY on 26/11/2024.
//

import UIKit

struct MockChicken {
    let name: String
    let price: Int
    let imageURL: String
    
    var image: UIImage? {
        UIImage(named: imageURL)
    }
    
    var priceText: String {
        "\(price.formatted(.number))원"
    }
    
    static let honeySeries: [MockChicken] = [
        .init(name: "허니오리지날", price: 19000, imageURL: "honeyCombo"),
        .init(name: "허니콤보", price: 23000, imageURL: "honeyCombo"),
        .init(name: "허니순살", price: 23000, imageURL: "honeyCombo")
    ]
}
