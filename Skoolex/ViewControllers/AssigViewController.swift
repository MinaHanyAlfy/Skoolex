//
//  AssigViewController.swift
//  Skoolex
//
//  Created by Petra Software on 01/07/2021.
//

import UIKit

class AssigViewController: UIViewController {
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var logoIV: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var assignTableView: UITableView!
    @IBOutlet weak var openAndClose: UISegmentedControl!
    @IBOutlet weak var teacherLabel: UILabel!
    var count = 2
    var position : Int?
    let assDetailsVc = FileViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        switch position {
        case 0:
            mainLabel.text = "Assignment"
        case 1:
            mainLabel.text = "Quiz"
        case 2:
            mainLabel.text = "Online Course"
        default:
            mainLabel.text = "Content"
        }
        registerCell()
        backBtn.addTarget(self, action: #selector(backTabbed), for: .touchUpInside)
        assignTableView.delegate = self
        assignTableView.dataSource = self
        openAndClose.addTarget(self, action: #selector(openOrCloseTabbed(_:)), for: .valueChanged)
        // Do any additional setup after loading the view.
    }
    func registerCell() {
        assignTableView.register(UINib(nibName: "AssignTableViewCell", bundle: nil), forCellReuseIdentifier: "AssignTableViewCell")
    }
    @objc func openOrCloseTabbed(_ sender : UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            count = 2
            assignTableView.reloadData()
            
        }
        if sender.selectedSegmentIndex == 1 {
            count = 0
            assignTableView.reloadData()
        }
    }
    

}
extension AssigViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = assignTableView.dequeueReusableCell(withIdentifier: "AssignTableViewCell", for: indexPath) as! AssignTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return assignTableView.frame.height / 4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        navigationController?.pushViewController(assDetailsVc, animated: true)
    }
    
    
}
