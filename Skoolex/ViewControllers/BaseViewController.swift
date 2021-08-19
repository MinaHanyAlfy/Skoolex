//
//  BaseViewController.swift
//  Skoolex
//
//  Created by Petra Software on 30/06/2021.
//

import UIKit
import SideMenu

class BaseViewController: UIViewController {
    var menu : MenuSideRoot?
    let assimentVc = AssigViewController()
    let contentVc = DetailsContentViewController()
    let onCourseVc = AssigViewController()
    let quizVc = AssigViewController()
    @IBOutlet weak var backGroundImageView: UIImageView!
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var baseTableView: UITableView!
    @IBOutlet weak var mainView: UIView!
    var position : Int? = 1 
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        switch position {
        case 1:
            titleLabel.text = "Assignments"
        case 2:
            titleLabel.text = "Quizes"
        case 3:
            titleLabel.text = "Online Courses"
        default:
            titleLabel.text = "Content"
        }
        //menuBtn.addTarget(self, action: #selector(menuTabbed), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(backTabbed), for: .touchUpInside)
       
    }
    
    func registerCell(){
        baseTableView.register(UINib(nibName: "ItemTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemTableViewCell")
        
    }


}

extension BaseViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = baseTableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if titleLabel.text == "Assignments" {
            assimentVc.position = 0
            navigationController?.pushViewController(assimentVc, animated: true)
            
        }
        if titleLabel.text == "Quizes" {
            quizVc.position = 1
            navigationController?.pushViewController(quizVc, animated: true)
            
        }
        if titleLabel.text == "Online Courses" {
            onCourseVc.position = 2
            navigationController?.pushViewController(onCourseVc, animated: true)
            
        }
        if titleLabel.text == "Content" {
            //contentVc.position = 3
            navigationController?.pushViewController(contentVc, animated: true)
            
        }
    }
}


extension UIViewController {
    
    @objc func backTabbed() {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
   
}
