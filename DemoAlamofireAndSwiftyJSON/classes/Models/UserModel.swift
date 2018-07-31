//
//  Users.swift
//  DemoAlamofireAndSwiftyJSON
//
//  Created by nws on 7/31/18.
//  Copyright © 2018 nws. All rights reserved.
//

import Foundation

struct UserModel {
    var name: String
    var email: String
}

//class UserModel {
//
//    var users: [Users] = []
//
//    init?(dict: DICT) {
//        guard let data = dict["data"] as? DICT else { return nil }
//        guard let user = data["users"] as? [DICT] else { return nil }
//        for users in user {
//            if let userObject = Users(dict: users) {
//                self.users.append(userObject)
//            }
//        }
//    }
//}
//struct Users {
//    var name: String
//    var email: String
//
//    init?(dict: DICT) {
//        guard let name = dict["name"] as? String else { return nil }
//        guard let email = dict["email"] as? String else { return nil }
//
//        self.name = name
//        self.email = email
//    }
//}
