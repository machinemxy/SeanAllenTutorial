//
//  User.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/01/23.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: Date
}
