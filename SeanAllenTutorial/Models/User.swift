//
//  User.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/01/23.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
