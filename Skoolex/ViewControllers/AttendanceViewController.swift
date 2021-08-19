//
//  AttendanceViewController.swift
//  Skoolex
//
//  Created by Petra Software on 04/07/2021.
//

import UIKit

class AttendanceViewController: UIViewController {
    @IBOutlet weak var timeTableLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var timeTableView: UITableView!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeTableView.delegate = self
        timeTableView.dataSource = self
        registerCell()
        segmentControl.addTarget(self, action: #selector(filesOrMedia(_:)), for: .valueChanged)
        backBtn.addTarget(self, action: #selector(backTabbed), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func filesOrMedia(_ sender : UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            timeTableView.reloadData()
            
        }
        if sender.selectedSegmentIndex == 1 {
            timeTableView.reloadData()
        }
        if sender.selectedSegmentIndex == 2 {
            timeTableView.reloadData()
        }
    }
    func registerCell(){
        timeTableView.register(UINib(nibName: "AttendTableViewCell", bundle: nil), forCellReuseIdentifier: "AttendTableViewCell")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainView.roundCorners(corners: [.topLeft,.topRight], radius: 24)
    }
}
extension AttendanceViewController :  UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        let cell = timeTableView.dequeueReusableCell(withIdentifier:"AttendTableViewCell", for: indexPath) as! AttendTableViewCell
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 4
    }

}
