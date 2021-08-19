//
//  MessagesViewController.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit
import SideMenu
@available(iOS 13.0, *)
class MessagesViewController: UIViewController {
    var vc : MenuSideRoot?
    @IBOutlet weak var messagesLabel: UILabel!
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var backGroundImageView: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var messagesTableView: UITableView!
    @IBOutlet weak var sendMessageBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        messagesTableView.delegate = self
        messagesTableView.dataSource = self
        registerCell()
        sendMessageBtn.addTarget(self, action: #selector(sendNewMessage), for: .touchUpInside)
        // Do any additional setup after loading the view.
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
        sendMessageBtn.layer.cornerRadius = 26

    }
    private func registerCell(){
        messagesTableView.register(UINib(nibName: "MessageTableViewCell", bundle: nil), forCellReuseIdentifier: "MessageTableViewCell")
    }
   @objc func sendNewMessage()  {
    print("newMessage")

   // view = NewMessageView.instanceFromNib()
    }
}
@available(iOS 13.0, *)
extension  MessagesViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = messagesTableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
