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
final class LoginViewController: UIViewController, UINavigationControllerDelegate {
    let vc = TabBarViewController()
    let homeVc = HomeViewController()
    let notificationVc = NotificationViewController()
    let messagesVc = MessagesViewController()
    let calenderVc = CalenderViewController()
    let announcVc = AnnouncmentViewController()
    let titleBackGround = UIImage(named: "notficationsBackground1")
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
        arrowBtn()
        // Do any additional setup after loading the view.
    }
                    
    func arrowBtn(){
        let imageView = UIImageView(frame: CGRect(x: CGFloat(loginBtn.frame.width - 80  ) , y: CGFloat(loginBtn.intrinsicContentSize.height / 2 - 2), width: CGFloat(22), height: CGFloat(22)))
        imageView.image = UIImage(named: "arrow-forward")
        imageView.contentMode = .center
        
        loginBtn.addSubview(imageView)
        let margins = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        loginBtn.contentEdgeInsets = margins
    }
    @objc func asStudentTabbed(){
      createTabBar()
    }
    //MARK:- SetUp Design
    private func setUpView() {
        loginBtn.clipsToBounds = true
        loginBtn.layer.cornerRadius = 18
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.white.cgColor

        
    }
    func dismissKeyboardGesture(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }

}
//MARK :- TabBar Create
@available(iOS 13.0, *)
extension LoginViewController {
    func createTabBar(){
        vc.tabBar.tintColor = UIColor(red: 237/255, green: 142/255, blue: 158/255, alpha: 1)
        messagesVc.tabBarItem.image = UIImage(named: "messages")
        messagesVc.tabBarItem.title = "Messages"
        homeVc.tabBarItem.image  = UIImage(named: "home")
        homeVc.tabBarItem.title = "Home"
        notificationVc.tabBarItem.image = UIImage(named: "alert")
        notificationVc.tabBarItem.title = "Notification"
        calenderVc.tabBarItem.title = "Calender"
        calenderVc.tabBarItem.image = UIImage(named: "calender")
        announcVc.tabBarItem.image = UIImage(named: "announcments")
        announcVc.tabBarItem.title = "Announcments"
        vc.setViewControllers([homeVc,announcVc,messagesVc,calenderVc,notificationVc], animated: false)
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
        
       //present(vc, animated: true, completion: nil)
        //
        //self.present(vc, animated: false, completion: nil)
        
    }

}
