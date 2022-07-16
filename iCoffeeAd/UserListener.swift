//
//  UserListener.swift
//  iCoffeeAd
//
//  Created by 大和田一裕 on 2022/07/16.
//

import Foundation
import Firebase

func downloadUser(userID: String, completion: @escaping(_ user:FUser?) -> Void) {
    FirebaseReference(.User).whereField(kID, isEqualTo: userID).getDocuments { snapshot, error in
        guard let snapshot = snapshot else { return }
        
        if !snapshot.isEmpty {
            
            let userData = snapshot.documents.first!.data()
            completion(FUser(userData as NSDictionary))
            
        } else {
            completion(nil)
        }
    }
}
