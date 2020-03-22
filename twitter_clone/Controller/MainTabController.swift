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
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    //MARK: - Helpers
    
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
