//
//  TextField.swift
//  JobSeek
//
//  Created by Darshan Dangar on 26/07/23.
//

import UIKit

extension UITextField {
    
    func setLeftMarginInTextField(padding: Double) {
        let leftView = UIView()
        leftView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        self.leftView = leftView
        self.leftViewMode = .always
    }
    
    func setRightMarginInTextField(padding: Double) {
        let rightView = UIView()
        rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        self.rightView = rightView
        self.rightViewMode = .always
    }
    
    func setLeftPaddingWithImageInTextField(padding: Double, imageView: String) {
        let leftView = UIView()
        leftView.frame = CGRect.init(x: 0.0, y: 0.0, width: padding, height: self.frame.size.height)
        let imgView = UIImageView()
        imgView.frame = CGRect.init(x: 23, y: 16, width: 20, height: 20)
        imgView.tintColor = UIColor.black
        imgView.image = UIImage.init(named: imageView)
        leftView.addSubview(imgView)
        self.leftView = leftView
        self.leftViewMode = .always
    }
    
    func setRightPaddingWithImageInTextField(padding: Double, imgName: String) {
        let rightView = UIView()
        rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        let imgView = UIImageView()
        imgView.frame = CGRect.init(x: 10, y: 12, width: padding-25, height: self.frame.size.height - 25.0)
        imgView.tintColor = UIColor.white
        imgView.image = UIImage.init(named: imgName)
        rightView.addSubview(imgView)
        self.rightView = rightView
        self.rightViewMode = .always
    }
    
    private func setPasswordToggleImage(_ button: UIButton) {
        let image = isSecureTextEntry ? UIImage(named: "eye") : UIImage(named: "eyedark")
            button.setImage(image, for: .normal)
        }

        func enablePasswordToggle(){
            let button = UIButton(type: .custom)
            setPasswordToggleImage(button)
            // givee edge insets to button as padding of its image
//            button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
            button.setTitle(" ", for: .normal)
//            button.frame = CGRect(x: CGFloat(self.frame.size.width - 5), y: CGFloat(5), width: CGFloat(20), height: CGFloat(20))
            button.frame = CGRect(x: 20, y: 20, width: 20, height: 20)
            button.configuration?.imagePadding = 50
            button.addTarget(self, action: #selector(self.togglePasswordView), for: .touchUpInside)
            rightView = button
            rightViewMode = .always
        }
        
        @objc func togglePasswordView(_ sender: UIButton) {
            self.isSecureTextEntry.toggle()
            setPasswordToggleImage(sender)
        }
    
}
