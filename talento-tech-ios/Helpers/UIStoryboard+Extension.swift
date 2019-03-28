//
//  UIStoryboard+Extension.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/25/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

extension UIStoryboard {
    static let login = UIStoryboard(name: "LoginStoryboard", bundle: nil)
    static let register = UIStoryboard(name: "RegisterStoryboard", bundle: nil)
    static let home = UIStoryboard(name: "HomeStoryboard", bundle: nil)
    static let list = UIStoryboard(name: "ListarStoryboard", bundle: nil)
    
    open func instantiate<T: UIViewController>(_ type: T.Type, named name: String? = nil) -> T {
        let identifier = name ?? String(describing: T.self)
        guard let viewController = instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Unable to load \(identifier) from storyboard")
        }
        return viewController
    }
}
