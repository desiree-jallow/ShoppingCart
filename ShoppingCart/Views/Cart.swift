//
//  Cart.swift
//  ShoppingCart
//
//  Created by Desiree on 3/10/21.
//

import SwiftUI

struct Cart: View {
    var cartItems: Int
    var body: some View {
        ZStack {
            Image("cart")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 30)
                Text("\(cartItems)")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
            }
            .offset(x: 20.0, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            .opacity(cartItems > 0 ? 1.0 : 0)
        }
    }
}
