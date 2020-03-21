//
//  GFAvatarImageView.swift
//  SeanAllenTutorial
//
//  Created by Ma Xueyuan on 2020/02/04.
//  Copyright © 2020 Ma Xueyuan. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let placeholderImage = UIImage(named: "avatar-placeholder")
    
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
    
    func downloadImage(from urlString: String) {
        if let image = NetworkManager.shared.cache.object(forKey: urlString as NSString) {
            self.image = image
            return
        }
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [unowned self] (data, response, error) in
            if error != nil { return }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
            guard let data = data else { return }
            guard let image = UIImage(data: data) else { return }
            NetworkManager.shared.cache.setObject(image, forKey: urlString as NSString)
            DispatchQueue.main.async {
                self.image = image
            }
        }
        
        task.resume()
    }
}
