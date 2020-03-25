//
//  LoginController.swift
//  twitter_clone
//
//  Created by Amit Biswas on 3/23/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    //MARK: - Properties
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "TwitterLogo")
        return iv
    }()
    
    private lazy var emailContainerView : UIView = {
        var image = #imageLiteral(resourceName: "ic_mail_outline_white_2x-1")
        var view = Utilities().inputContainerView(withImage: image, textFiled: emailTextField)
        return view
    }()
    
    private lazy var passwordContainerView : UIView = {
        var image = #imageLiteral(resourceName: "ic_person_outline_white_2x")
        var view = Utilities().inputContainerView(withImage: image, textFiled: passwordTextFiled)
        return view
    }()
    
    private let emailTextField: UITextField = {
        let tf = Utilities().textFiled(withPlaceholder: "Email")
        return tf
    }()
    
    private let passwordTextFiled : UITextField = {
        let tf = Utilities().textFiled(withPlaceholder: "Password")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Selector
    
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 140, height: 140)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 8
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }
    
    
}

