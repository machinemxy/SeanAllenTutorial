//
//  FavoritesListVC.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/01/08.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                print(error.rawValue)
            }
        }
    }
}
