//
//  GFAvatarImageView.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/02/04.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let placeholderImage = Images.placeHolder
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
