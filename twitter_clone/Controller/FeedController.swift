//
//  FeedController.swift
//  twitter_clone
//
//  Created by Amit Biswas on 3/22/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation
import UIKit

class FeedController: UIViewController {

    //MARK: - Properties
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
       
    }
    
    //MARK: - Helpers
    func configureUI () {
        view.backgroundColor = .white
       
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }

}
