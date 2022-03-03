//
//  BaseView.swift
//  Radity
//
//  Created by Ilhad Mammadli on 02.03.22.
//

import Foundation
import UIKit
class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func appendSubviews(views: [UIView]) {
        for i in views {
            self.addSubview(i)
        }
    }
}
