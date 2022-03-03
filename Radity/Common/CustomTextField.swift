//
//  CustomTextField.swift
//  Radity
//
//  Created by Ilhad Mammadli on 02.03.22.
//

import Foundation
import UIKit
class ImageTextField: BaseView {
    
    private var mainView: UIView!
    private var leftImage: UIImageView!
    private var rightImage: UIImageView!
    private var textField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  private func setupUI () {
      
      mainView = {
          let view = UIView()
          view.layer.borderWidth = 1.0
          view.layer.borderColor = UIColor(red: 0/255, green: 115/255, blue: 247/255, alpha: 1).cgColor
          view.layer.cornerRadius = 4
          
          return view
      }()
      
      leftImage = {
          let image = UIImageView()
          image.contentMode = .scaleAspectFit
          image.isHidden = true
          return image
      }()
      
      rightImage = {
          let image = UIImageView()
          image.contentMode = .scaleAspectFit
          image.isHidden = true
          return image
      }()
      
      textField = {
          let textField = UITextField()

          return textField
      }()
      
      appendSubviews(views: [mainView, leftImage, rightImage, textField])
      setupConstraints()
      
    }
    
    private func setupConstraints() {
        mainView.anchor(left: leftAnchor, right: rightAnchor, leftConstant: 20, rightConstant: 20, heightConstant: 56)
        mainView.anchor(centerY: centerYAnchor)
        
        leftImage.anchor(left: mainView.leftAnchor, leftConstant: 20, widthConstant: 16, heightConstant: 16)
        leftImage.anchor(centerY: mainView.centerYAnchor)
        
        rightImage.anchor(right: mainView.rightAnchor, rightConstant: 20, widthConstant: 16, heightConstant: 16)
        rightImage.anchor(centerY: mainView.centerYAnchor)
        
        if (leftImage.isHidden) && (rightImage.isHidden) {
            
            textField.anchor(left: leftAnchor, right: rightAnchor, leftConstant: 5, rightConstant: 5)
        } else {
            if rightImage.isHidden {
                
                textField.anchor(left: leftImage.rightAnchor, right: rightAnchor, leftConstant: 12, rightConstant: 5)
            } else  {
                textField.anchor(left: leftImage.rightAnchor, right: rightImage.leftAnchor, leftConstant: 12, rightConstant: 12)
               
            }
          
        }
        
        textField.anchor(centerY: mainView.centerYAnchor)
    }
    
    func setLeftImage(image: UIImage) {
        leftImage.image = image
        leftImage.isHidden = false
      
    }
    
    func setRightImage(image: UIImage) {
        rightImage.image = image
        rightImage.isHidden = false
    }
    
    func setPlaceholder(placeholder: String) {
        textField.placeholder = placeholder
    }
    
}
