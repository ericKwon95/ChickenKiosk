//
//  OrderManager.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/28/24.
//

import Combine

final class OrderManager {
    var orderDidSet: () -> Void
    var orders: [Order] = [] {
        didSet {
            orderDidSet()
        }
    }
    
    var totalCount: Int {
        orders.reduce(0) { partialResult, order in
            partialResult + order.count
        }
    }
    
    var totalPrice: Int {
        orders.reduce(0) { partialResult, order in
            partialResult + order.totalPrice
        }
    }
    
    init(orderDidSet: @escaping () -> Void) {
        self.orderDidSet = orderDidSet
    }
}
