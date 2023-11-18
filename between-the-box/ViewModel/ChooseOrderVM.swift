//
//  ChooseOrderVM.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

@Observable class ChooseOrderVM {
    let lastWeekOrders: [OrderModel] = [
        OrderModel(
            recipe: .poblanoBeefTacos
        )
    ]
    let thisWeekOrders: [OrderModel] = []
}
