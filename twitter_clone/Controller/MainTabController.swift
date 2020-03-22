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
        
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
       
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "like")
        
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(named: "mail")
        
        viewControllers = [feed, explore, notifications, conversations]
    }
    

}
