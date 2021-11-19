//
//  GFRepoItemVC.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/05/22.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

protocol RepoItemVCDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    weak var delegate: RepoItemVCDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
