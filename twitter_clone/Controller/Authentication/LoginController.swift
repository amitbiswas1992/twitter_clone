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
    }
    
    
}

