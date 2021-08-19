//
//  AnnouncmentViewController.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit
import SideMenu
@available(iOS 13.0, *)
class AnnouncmentViewController: UIViewController, UINavigationControllerDelegate {
    var vc : MenuSideRoot?
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var backGroundImageView: UIImageView!
    @IBOutlet weak var announcmentLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var announcmentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        announcmentTableView.delegate = self
        announcmentTableView.dataSource = self
        registerCell()
        vc = MenuSideRoot(rootViewController: SideMenuViewController())
        SideMenuManager.default.menuRightNavigationController = vc
        menuBtn.addTarget(self, action: #selector(menuTabbed), for: .touchUpInside)
    }
    @objc func menuTabbed(){
        present(vc!, animated: true, completion: nil)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainView.roundCorners(corners: [.topLeft,.topRight], radius: 45.0)
    }

    private func registerCell(){
        announcmentTableView.register(UINib(nibName: "NotificationTableViewCell", bundle: nil), forCellReuseIdentifier: "NotificationTableViewCell")
    }
    
}
@available(iOS 13.0, *)
extension AnnouncmentViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = announcmentTableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell", for: indexPath) as! NotificationTableViewCell
        cell.kindImageView.image = UIImage(named: "announcments")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    

    

}
