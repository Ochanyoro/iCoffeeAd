//
//  UserDetailView.swift
//  iCoffeeAd
//
//  Created by 大和田一裕 on 2022/07/16.
//

import SwiftUI

struct UserDetailView: View {
    
    var order: Order
    @State var user: FUser?
    
    var body: some View {
        List {
            Section {
                Text(user?.fullName ?? "")
                Text(user?.email ?? "")
                Text(user?.phoneNumber ?? "")
                Text(user?.fullAddress ?? "")
                
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("User Profile")
        .onAppear {
            self.getUser()
        }
    }
    
    
    
    private func getUser() {
        downloadUser(userID: self.order.customerID) { user in
            self.user = user
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(order: Order())
    }
}
