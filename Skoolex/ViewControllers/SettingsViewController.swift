//
//  SettingsViewController.swift
//  Skoolex
//
//  Created by Petra Software on 30/06/2021.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var backBtn: UIButton!
    let settingsTitles = ["Rate Application ","Share Application ", "Version ", "Language "]
    let index = ["","","3.2.1","English"]
    @IBOutlet weak var settingsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        backBtn.addTarget(self, action: #selector(backTabbed), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    func  registerCell()  {
        settingsTableView.register(UINib(nibName: "SettingsTableViewCell", bundle: nil), forCellReuseIdentifier: "SettingsTableViewCell")
    }
    
    
    
}
extension SettingsViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingsTableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        cell.settingsLabel.text = settingsTitles[indexPath.row]
        cell.settingsVersionLabel.text = index[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return settingsTableView.frame.height / 4 
    }
    
}
