//
//  NotificationViewController.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit
import SideMenu
@available(iOS 13.0, *)
class NotificationViewController: UIViewController {
    @IBOutlet weak var menuBtn: UIButton!
    var vc : MenuSideRoot?
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var notificationTableView: UITableView!
    @IBOutlet weak var notificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        notificationTableView.delegate = self
        notificationTableView.dataSource = self
        registerCell()
        vc = MenuSideRoot(rootViewController: SideMenuViewController())
        SideMenuManager.default.menuRightNavigationController = vc
        menuBtn.addTarget(self, action: #selector(menuTabbed), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainView.roundCorners(corners: [.topLeft,.topRight], radius: 45.0)
    }
   
 
    @objc func menuTabbed(){
        present(vc!, animated: true, completion: nil)
    }
    
    
    
    private func registerCell(){
        notificationTableView.register(UINib(nibName: "NotificationTableViewCell", bundle: nil), forCellReuseIdentifier: "NotificationTableViewCell")
    }
    
}
@available(iOS 13.0, *)
extension NotificationViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = notificationTableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell", for: indexPath) as! NotificationTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return notificationTableView.frame.height / 5
    }
    
    
    
    
    
    
}
extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

