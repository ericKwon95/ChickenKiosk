//
//  Order.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/28/24.
//

struct Order {
    let menu: Chicken
    var count: Int
    
    init(menu: Chicken, count: Int = 1) {
        self.menu = menu
        self.count = count
    }
    
    var totalPrice: Int {
        return menu.price * count
    }
}
