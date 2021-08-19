//
//  DetailsContentViewController.swift
//  Skoolex
//
//  Created by Petra Software on 04/07/2021.
//

import UIKit

class DetailsContentViewController: UIViewController {
    @IBOutlet weak var filesTableView: UITableView!
    @IBOutlet weak var segmantControl: UISegmentedControl!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var subjectTitleLabel: UILabel!
    
    @IBOutlet weak var teacherTitleLabel: UILabel!
    @IBOutlet weak var backGroundImageView: UIImageView!
    var flag = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        backBtn.addTarget(self, action: #selector(backTabbed), for: .touchUpInside)
        filesTableView.delegate = self
        filesTableView.dataSource = self
        segmantControl.addTarget(self, action: #selector(filesOrMedia(_:)), for: .valueChanged)
        registerCells()
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainView.roundCorners(corners: [.topLeft,.topRight], radius: 24)
    }
    func registerCells(){
        filesTableView.register(UINib(nibName: "FileVCTableViewCell", bundle: nil), forCellReuseIdentifier: "FilesTableViewCell")
        filesTableView.register(UINib(nibName: "MediaVCTableViewCell", bundle: nil), forCellReuseIdentifier: "MediaTableViewCell")
    }
    @objc func filesOrMedia(_ sender : UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            flag = 0
            filesTableView.reloadData()
            
        }
        if sender.selectedSegmentIndex == 1 {
            flag = 1
            filesTableView.reloadData()
        }
    }
    


}
extension DetailsContentViewController:UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch flag {
        case 0:
            return 4
        default:
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch flag {
        case 0:
            let cell = filesTableView.dequeueReusableCell(withIdentifier: "FilesTableViewCell", for: indexPath) as! FileVCTableViewCell
            return cell
        default:
            let cell = filesTableView.dequeueReusableCell(withIdentifier: "MediaTableViewCell", for: indexPath) as! MediaVCTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return filesTableView.frame.height / 4
    }
}
