//
//  SideMenuViewController.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit
import SideMenu
@available(iOS 13.0, *)
class SideMenuViewController: UIViewController {
    let homeVc = HomeViewController()
    let assignVc = BaseViewController()
    let quizesVc = BaseViewController()
    let onlineCourseVc = BaseViewController()
    let timeTableVc = AttendanceViewController()
    let contentVc = BaseViewController()
    let attendVc = CalenderViewController()
    let settingsVc = SettingsViewController()
    let profileVc = ProfileViewController()
    let tabBarVc = TabBarViewController()
    let titles = ["Home","Assignments","Quizes","Online Courses","TimeTable","Content","Attendence","Settings","Profile"]
    let images = ["dashboard","assigments","quiz","onlineclasses","timetable","content","attend","settings","profile"]
    @IBOutlet weak var menuTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = UIColor.white
        menuTableView?.delegate = self
        menuTableView?.dataSource = self
        registerCell()
    }
    
    func registerCell()  {
        menuTableView?.register(UINib(nibName: "SideMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "SideMenuTableViewCell")
    }
    
    
}
@available(iOS 13.0, *)
extension SideMenuViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView?.dequeueReusableCell(withIdentifier: "SideMenuTableViewCell", for: indexPath) as! SideMenuTableViewCell
        cell.menuLabel.text = titles[indexPath.row]
        cell.menuImageView.image = UIImage(named: images[indexPath.row])
        if indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 6{
            cell.mainView.backgroundColor = UIColor(displayP3Red: 243/255, green: 193/255, blue: 202/255, alpha: 1)
        }
        if indexPath.row == 2 || indexPath.row == 5 || indexPath.row == 8 {
            cell.mainView.backgroundColor = UIColor(displayP3Red: 196/255, green: 199/255, blue: 200/255, alpha: 1)
            
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return menuTableView!.frame.height / 9
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            
            dismiss(animated: true, completion: nil)
        case 1:
            assignVc.position = 1
            navigationController?.pushViewController(assignVc, animated: true)
        case 2:
            quizesVc.position = 2
            navigationController?.pushViewController(quizesVc, animated: true)
        case 3:
            onlineCourseVc.position = 3
            navigationController?.pushViewController(onlineCourseVc, animated: true)
        case 4:
            navigationController?.pushViewController(timeTableVc, animated: true)
        case 5:
            contentVc.position = 5
            navigationController?.pushViewController(contentVc, animated: true)
        case 6 :
            navigationController?.pushViewController(attendVc, animated: true)
        case 7 :
            navigationController?.pushViewController(settingsVc, animated: true)
        case 8 :
            navigationController?.pushViewController(profileVc, animated: true)
        default:
            
          dismiss(animated: true, completion: nil)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

