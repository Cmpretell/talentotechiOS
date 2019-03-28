//
//  LoginRouter.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/25/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

protocol LoginRouterProtocol: BaseRouter {
    func routeToHome()
    func routerToPhoneCodeValidView()
}

class LoginRouter: LoginRouterProtocol, BaseRouter {

    private var viewController:LoginViewController
    
    init(viewController: LoginViewController) {
        self.viewController = viewController
    }
    
    // MARK: Navigation
    func routeToHome() {
        let homeViewController = UIStoryboard.home.instantiate(HomeViewController.self)
        self.viewController.navigationController?.pushViewController(homeViewController,
                                                                     animated: true)
    }
    
    func routerToPhoneCodeValidView() {
        self.viewController.performSegue(withIdentifier: "segueVerifyCode", sender: nil)
    }
    
}
