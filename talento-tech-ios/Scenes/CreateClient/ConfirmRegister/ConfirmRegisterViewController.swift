//
//  ConfirmRegisterViewController.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/26/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

protocol ConfirmRegisterView:BaseView {
}

class ConfirmRegisterViewController: BaseViewController, ConfirmRegisterView {

    public var presenter:ConfirmRegisterIPresenter?
    
    //MARK:Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfirmRegisterConfigurator.sharedInstance.configure(viewController: self)
        self.presenter?.onViewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:ConfirmRegisterView
    func initView() {
        self.view.backgroundColor = Color.pastelBlue
    }
    
    //MARK:Actions
    
    @IBAction func enterHomeAction(_ sender: Any) {
        self.presenter?.presentToHome()
    }
    

    
}
