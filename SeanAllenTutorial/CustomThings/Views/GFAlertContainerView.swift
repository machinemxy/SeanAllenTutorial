//
//  GFAlertContainerView.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/01/14.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

class GFAlertContainerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
    }
}
