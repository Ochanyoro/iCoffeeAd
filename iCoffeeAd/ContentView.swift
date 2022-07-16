//
//  ContentView.swift
//  iCoffeeAd
//
//  Created by 大和田一裕 on 2022/07/16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var orderListener = OrderListener()
    
    var body: some View {
        
        NavigationView {
            
            List {
                Section(header: Text("active order")) {
                    ForEach(self.orderListener.activeOrders ?? []) { order in
                        NavigationLink(destination: OrderDetailView()) {
                            HStack {
                                Text(order.customerName)
                                
                                Spacer()
                                
                                Text("$\(order.amount.clean)")
                            }
                        }
                    }
                }
                
                Section(header: Text("Completed order")) {
                    ForEach(self.orderListener.completedOrders ?? []) { order in
                        NavigationLink(destination: OrderDetailView()) {
                            HStack {
                                Text(order.customerName)
                                
                                Spacer()
                                
                                
                                Text("$\(order.amount.clean)")
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Orders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
