//
//  ShopList.swift
//  ShoppingCart
//
//  Created by Desiree on 3/10/21.
//

import SwiftUI

struct ShopList: View {
    var availableItems: [ShopItem]
    @State private var cartItems: Dictionary<Int,ShopItem> = [:]
    var body: some View {
        NavigationView {
            List(availableItems) { item in
                ShopRow(inCart: inCart(shopItem: item), shopItem: item)
                    .onTapGesture {
                        toggleCartItem(shopItem: item)
                    }
            }
            .navigationBarTitle(Text("The Shop"))
            .navigationBarItems(trailing: Cart(cartItems: cartItems.count))
        }
    }
    
    private func inCart(shopItem: ShopItem) -> Bool {
        return cartItems[shopItem.id] != nil
    }
    
    private func toggleCartItem(shopItem: ShopItem) {
        if cartItems[shopItem.id] == nil {
            cartItems[shopItem.id] = shopItem
        } else {
            cartItems[shopItem.id] = nil
        }
    }
}




struct ShopList_Previews: PreviewProvider {
    static var previews: some View {
        ShopList(availableItems: [
        ShopItem(price: 99.99, id: 1, name: "Nike Air"),
        ShopItem(price: 699.99, id: 2, name: "iPhone XX"),
                    ShopItem(price: 59.99, id: 3, name: "Jedi Fallen Orderxd vf")])
    }
}
