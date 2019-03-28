//
//  BaseRouter.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/25/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

protocol BaseRouter {
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

extension BaseRouter {
    func prepare(for segue: UIStoryboardSegue, sender: Any?) { }
}
