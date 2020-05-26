//
//  UITableViewEx.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/05/26.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

extension UITableView {
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    func realoadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
