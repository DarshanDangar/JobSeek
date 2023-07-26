//
//  Registratiojn.swift
//  JobSeek
//
//  Created by Darshan Dangar on 26/07/23.
//

import UIKit

class Registration: ViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tfFullName: UITextFieldCustom!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
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
        tfFullName.setBorderStyle(1, UIColor(named: "grayboarder") ?? .white)
        tfEmail.setBorderStyle(1, UIColor(named: "grayboarder") ?? .white)
        tfPassword.setBorderStyle(1, UIColor(named: "grayboarder") ?? .white)
        tfConfirmPassword.setBorderStyle(1, UIColor(named: "grayboarder") ?? .white)
        tfFullName.cornerRadius(8)
        tfEmail.cornerRadius(8)
        tfPassword.cornerRadius(8)
        tfConfirmPassword.cornerRadius(8)
        btnRegister.cornerRadius(10)
        tfPassword.enablePasswordToggle()
        tfConfirmPassword.enablePasswordToggle()
        tfEmail.setLeftPaddingWithImageInTextField(padding: 45, imageView: "email")
        tfFullName.setLeftPaddingWithImageInTextField(padding: 45, imageView: "profile")
        tfPassword.setLeftPaddingWithImageInTextField(padding: 45, imageView: "password")
        tfConfirmPassword.setLeftPaddingWithImageInTextField(padding: 45, imageView: "password")
        btnRegisterWithApple.roundView()
        btnRegisterWithGoogle.roundView()
        btnRegisterWithFacebook.roundView()
        tfFullName.delegate = self
        tfEmail.delegate = self
        tfPassword.delegate = self
        tfConfirmPassword.delegate = self
    }
    
    // MARK: IbActions
    @IBAction func btnRegister(_ sender: Any) {
        
    }
    
}

// MARK: Extension
extension Registration: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case tfFullName:
            tfEmail.becomeFirstResponder()
        case tfEmail:
            tfPassword.becomeFirstResponder()
        case tfPassword:
            tfConfirmPassword.becomeFirstResponder()
        case tfConfirmPassword:
            tfConfirmPassword.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
}
