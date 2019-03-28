//
//  LoginConfigurator.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/25/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

class LoginConfigurator {
    
    // MARK: Object lifecycle
    public static let sharedInstance = LoginConfigurator()
    
    // MARK: Configuration
    func configure(viewController:LoginViewController) {
        // Inicializamos el router
        let router = LoginRouter(viewController: viewController)
        
        // Ocultamos el navigationbar
        viewController.navigationController?.setNavigationBarHidden(false, animated:false);
        
        let interactor = LoginInteractor(viewController: viewController)
        
        // Inicializamos el presenter
        let presenter = LoginPresenter(interactor: interactor, router: router, view: viewController)
        
        viewController.presenter = presenter
    }

}
