//
//  MainTabBarController.swift
//  twitter_clone
//
//  Created by Amit Biswas on 3/22/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {
    //MARK: - Properties
    let actionButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
       
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTaped), for: .touchUpInside)
        return button
    }()
    
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
        configureUI()
    }
    // MARK: - Selector
    
    @objc func actionButtonTaped() {
        print(123)
    }
    
    
    
    //MARK: - Helpers
    
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor( bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    func configureViewControllers() {
        
        let feed      = FeedController()
        let navbarOne = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
        
        let explore   = ExploreController()
        let navbarTwo = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        let notifications = NotificationsController()
        let navbarThree   = templateNavigationController(image: UIImage(named: "like"), rootViewController: notifications)
        
        let conversations = ConversationsController()
        let navbarFour    = templateNavigationController(image: UIImage(named: "mail"), rootViewController: conversations)
        
        
        viewControllers = [navbarOne, navbarTwo, navbarThree, navbarFour]
    }
    
    func templateNavigationController (image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let navbar = UINavigationController(rootViewController: rootViewController)
        navbar.tabBarItem.image = image
        navbar.navigationBar.barTintColor = .white
        return navbar
        
    }
    
}
