//
//  OrderDetailView.swift
//  iCoffeeAd
//
//  Created by 大和田一裕 on 2022/07/16.
//

import SwiftUI

struct OrderDetailView: View {
    
    var order: Order
    
    var body: some View {
        VStack {
            List {
                Section(header: Text("Customer")) {
                    NavigationLink(destination: UserDetailView(order: order)) {
                        Text(order.customerName)
                            .font(.headline)
                    }
                }
                
                Section(header: Text("Order Imtems")) {
                    ForEach(self.order.orderItems) { drink in
                        HStack{
                            Text(drink.name)
                            
                            Spacer()
                            
                            Text("$ \(drink.price.clean)")
                        }
                    }
                }
            }
        }
        .navigationTitle("Orders")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
            print("complete order")
        }, label: {
            Text("Complete Order")
        })
        )
    }
}

struct OrderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailView(order: Order())
    }
}
