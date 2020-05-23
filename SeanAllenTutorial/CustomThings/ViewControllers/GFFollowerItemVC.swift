//
//  GFFollowerItemVC.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/05/22.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, with: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }

    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
