//
//  HomeViewController.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit
import SideMenu
@available(iOS 13.0, *)
class HomeViewController: UIViewController {
    var vc : MenuSideRoot?
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var menuBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        homeTableView?.reloadData()
        menuBtn.addTarget(self, action: #selector(tabbedMenu), for: .touchUpInside)
        vc = MenuSideRoot(rootViewController: SideMenuViewController())
        SideMenuManager.default.menuRightNavigationController = vc
       
        dismissKeyboardGesture()
        // Copy all settings to the other menu
      
            // Do any additional setup after loading the view.
    }
    func dismissKeyboardGesture(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }

    
    func registerCells() {
        homeTableView?.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
    }
    @objc func tabbedMenu(){
     //   let sideVc = SideMenuViewController(rootViewController: S)
       // let menu = HomeViewController
        present(vc!, animated: true, completion: nil)
    }
 
}
@available(iOS 13.0, *)
extension HomeViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            let label = UILabel()
            label.text = "New Quiz"
            label.textColor = UIColor(displayP3Red: 48/255, green: 95/255, blue: 114/255, alpha: 1)
            return label.text
        case 1:
            return "New Assignment"
        case 2:
            return "New Online Class"
        default:
            return "New Content"
        }
    }
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.kind(index: indexPath.section)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(164)
    }
    
    
    
    
    
}
class MenuSideRoot : UISideMenuNavigationController {
    
}
