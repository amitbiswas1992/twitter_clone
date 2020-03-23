//
//  NotificationsController.swift
//  twitter_clone
//
//  Created by Amit Biswas on 3/22/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class NotificationsController: UIViewController {

    //MARK: - Properties
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        configureUI()
    }
    
    //MARK: - Helpers
   func configureUI () {
           view.backgroundColor = .white
           navigationItem.title = "Notifications"
        }

}
