//
//  Utilities.swift
//  twitter_clone
//
//  Created by Amit Biswas on 3/24/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class Utilities {
    
    func inputContainerView(withImage image : UIImage, textFiled: UITextField) -> UIView {
        let view = UIView()
        let iv = UIImageView()
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        iv.image = image
        view.addSubview(iv)
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8)
        iv.setDimensions(width: 24, height: 24)
        view.addSubview(textFiled)
        textFiled.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 1.5)
        
        return view
    }
    
    func textFiled (withPlaceholder placeholder: String) -> UITextField {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.autocapitalizationType = .none
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return tf
    }
    
}
