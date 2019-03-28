//
//  BaseView.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/25/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

protocol BaseView {
    
    func initView()
    
    func showProgressActivityView(message :String)
    
    func hideProgressActivityView()
}

extension BaseView {
    
    func initView() {}
    
    func showProgressActivityView(message :String){}
    
    func hideProgressActivityView(){}
}
