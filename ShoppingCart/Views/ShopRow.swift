//
//  ShopRow.swift
//  ShoppingCart
//
//  Created by hax0r-MBP on 11/15/19.
//  Copyright © 2019 Devslopes. All rights reserved.
//

import SwiftUI

struct ShopRow: View {
    var inCart: Bool
    var shopItem: ShopItem
    var body: some View {
        HStack {
            Text(shopItem.name)
            Text("$\(String(format: "%.2f", shopItem.price))")
                .fontWeight(.bold)
            Spacer()
            Image(inCart ? "checked" : "unchecked")
            .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
        }
    }
}
