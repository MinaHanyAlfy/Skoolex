//
//  ProfileViewController.swift
//  Skoolex
//
//  Created by Petra Software on 30/06/2021.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var editProfileBtn: UIButton!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var changePasswordBtn: UIButton!
    let kindTypes = ["Name","Birth Date","Student Code","Academic Year","Grade","Class","Username"]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        backBtn.addTarget(self, action: #selector(backTabbed), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setUpDesign()
    }
    func registerCell() {
        profileTableView.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
    }
    func setUpDesign(){
        mainView.roundCorners(corners: [.topLeft,.topRight], radius: 24)
        editProfileBtn.layer.borderWidth = 1
        editProfileBtn.clipsToBounds = true
        editProfileBtn.layer.cornerRadius = 12
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        let margins = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        editProfileBtn.contentEdgeInsets = margins
    }


}
extension ProfileViewController : UITabBarDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kindTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = profileTableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        cell.typeLabel.text = kindTypes[indexPath.row]
        cell.defineLabel.text = "Item \(indexPath.row) "
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return profileTableView.frame.height / CGFloat(kindTypes.count)
    }
    
    
    
    
    
}
