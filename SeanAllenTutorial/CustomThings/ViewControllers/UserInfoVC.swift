//
//  UserInfoVC.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/04/14.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    

    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
