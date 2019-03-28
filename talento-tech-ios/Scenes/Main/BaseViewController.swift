//
//  BaseViewController.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/25/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class BaseViewController: UIViewController, NVActivityIndicatorViewable {
    
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: BaseView
    func showProgressActivityView(message: String) {
        let size = CGSize(width: 30, height: 30)
        startAnimating(size, message: message, type: NVActivityIndicatorType(rawValue: 32))
    }
    
    func hideProgressActivityView() {
        self.stopAnimating()
    }
    
}
