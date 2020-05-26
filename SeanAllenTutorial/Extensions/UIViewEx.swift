//
//  UIViewEx.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/05/26.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
