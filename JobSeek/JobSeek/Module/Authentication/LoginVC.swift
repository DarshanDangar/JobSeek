//
//  Login.swift
//  JobSeek
//
//  Created by Darshan Dangar on 26/07/23.
//

import UIKit

class LoginVC: ViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnForgotPassword: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnRegisterWithApple: UIButton!
    @IBOutlet weak var btnRegisterWithGoogle: UIButton!
    @IBOutlet weak var btnRegisterWithFacebook: UIButton!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        tfEmail.setLeftPaddingWithImageInTextField(padding: 45, imageView: "email")
        tfPassword.setLeftPaddingWithImageInTextField(padding: 45, imageView: "password")
        tfPassword.enablePasswordToggle()
        tfEmail.setBorderStyle(1, UIColor(named: "grayboarder") ?? .white)
        tfPassword.setBorderStyle(1, UIColor(named: "grayboarder") ?? .white)
        tfEmail.cornerRadius(8)
        tfPassword.cornerRadius(8)
        btnLogin.cornerRadius(10)
        btnRegisterWithApple.roundView()
        btnRegisterWithGoogle.roundView()
        btnRegisterWithFacebook.roundView()
        tfEmail.delegate = self
        tfPassword.delegate = self
    }

}

// MARK: Extension
extension LoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case tfEmail:
            tfPassword.becomeFirstResponder()
        case tfPassword:
            tfPassword.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
}
