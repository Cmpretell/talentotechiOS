//
//  CustomButton.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/26/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

    @IBInspectable
    var cornerRadius: CGFloat = 17.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    
    private func setup() {
        //self.titleLabel?.font = Font.Style.buttonTitle
        self.setTitleColor(.white, for: .normal)
        self.setTitleColor(.white, for: .highlighted)
    }
    
    override func prepareForInterfaceBuilder() {
        setup()
    }

}
