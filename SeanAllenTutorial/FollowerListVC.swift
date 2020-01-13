//
//  FollowerListVC.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/01/13.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
