//
//  User.swift
//  ToDoList
//
//  Created by MasterBi on 17/6/24.
//

import Foundation

struct User: Codable {
    let id: String
    let fullname: String
    let email: String
    let joined: TimeInterval
}
