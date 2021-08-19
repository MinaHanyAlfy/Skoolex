//
//  FileViewController.swift
//  Skoolex
//
//  Created by Petra Software on 01/07/2021.
//

import UIKit

class FileViewController: UIViewController {
    @IBOutlet weak var logoIv: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var secMainLabel: UILabel!
    @IBOutlet weak var thirdMainView: UIView!
    @IBOutlet weak var titleSecView: UILabel!
    @IBOutlet weak var uploadLabel: UILabel!
    
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var uploadBtn: UIButton!
    @IBOutlet weak var downloadBtn: UIButton!
    @IBOutlet weak var secSecLabel: UILabel!
    @IBOutlet weak var secMainView: UIView!
    
    @IBOutlet weak var teacherLabel: UILabel!
    @IBOutlet weak var mainLabel: UIImageView!
    @IBOutlet weak var backBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backBtn.addTarget(self, action: #selector(backTabbed), for: .touchUpInside)
        // Do any additional setup after loading    the view.
    }

    func setUpDesign(){
        mainView.roundCorners(corners: [.topLeft,.topRight], radius: 24)
        //secMainView.roundCorners(corners: .allCorners, radius: 20 )
       // thirdMainView.roundCorners(corners: .allCorners, radius: 20 )
        saveBtn.roundCorners(corners: .allCorners, radius: 16)
        secMainView.layer.borderWidth = 1
        secMainView.clipsToBounds = true
        thirdMainView.clipsToBounds = true
        secMainView.layer.cornerRadius = 16
        thirdMainView.layer.cornerRadius = 16
        secMainView.layer.borderColor = UIColor(displayP3Red: 241/255, green: 140/255, blue: 142/255, alpha: 1).cgColor
        thirdMainView.layer.borderColor = UIColor(displayP3Red: 213/255 , green: 213/255 , blue: 213/255, alpha: 1).cgColor
        thirdMainView.layer.borderWidth = 1
      //  secMainLabel.textColor = UIColor(displayP3Red: 48/255 , green: 114/255 , blue: 95/255, alpha: 1)
        //uploadLabel.textColor = UIColor(displayP3Red: 48/255 , green: 114/255 , blue: 95/255, alpha: 1)
       // secSecLabel.textColor = UIColor(displayP3Red: 241/255, green: 140/255, blue: 142/255, alpha: 1)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setUpDesign()
    }

}
