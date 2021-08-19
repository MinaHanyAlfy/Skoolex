//
//  LoginViewController.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit
import MDFTextAccessibility
import MaterialComponents
@available(iOS 13.0, *)
final class LoginViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginAsStudentBtn: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        dismissKeyboardGesture()
        loginAsStudentBtn.addTarget(self, action: #selector(asStudentTabbed), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    @objc func asStudentTabbed(){
     
        let loginVc = LoginViewController()
        let vc = TabBarViewController()
//      let homeVc =
//   vc.setViewControllers([loginVc,homeVc], animated: false)
       // let home = storyboard.
       present(home, animated: true, completion: nil)
        
        
    }
    //MARK:- SetUp Design
    private func setUpView() {
        loginBtn.clipsToBounds = true
        loginBtn.layer.cornerRadius = 18
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.white.cgColor
//        emailTextField.label.text = "Email"
//        emailTextField.placeholder = "Email"
//        emailTextField.sizeToFit()
//        view.addSubview(textField)
//        let textField = MDCFilledTextField(frame: emailTextField.frame)
//        textField.label.text = "Email"
//        textField.placeholder = ""
//        textField.sizeToFit()
//        textField.backgroundColor  = .white
//
//        view.addSubview(textField)
        
    }
    func dismissKeyboardGesture(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    /*
     // MARK: - Navigation
 */
    
}
