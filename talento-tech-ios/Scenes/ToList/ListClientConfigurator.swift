//
//  ListClientConfigurator.swift
//  talento-tech-ios
//
//  Created by Home on 26/03/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit
import Firebase

class ListClientConfigurator {

    // MARK: Object lifecycle
    public static let sharedInstance = ListClientConfigurator()
    
    // MARK: Configuration
    func configure(viewController: ListClientViewController) {
        
        //viewController.navigationItem.setHidesBackButton(true, animated: false)
        
        let ref: DatabaseReference =  Database.database().reference().child("Clients")
        
        // Inicializamos el interactor
        let interactor = ListClientInteractor(reference: ref)
        
        // Inicializar presenter
        let presenter = ListClientPresenter(interactor:interactor, view: viewController)
        
        viewController.presenter = presenter
    }
    
}
