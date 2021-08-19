//
//  CalenderViewController.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit
import SideMenu
import FSCalendar
@available(iOS 13.0, *)
class CalenderViewController: UIViewController {
    @IBOutlet weak var calenderLabel: UILabel!
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var segmantControl: UISegmentedControl!
    @IBOutlet weak var calenderViewFS: FSCalendar!
    var vc : MenuSideRoot?
    override func viewDidLoad() {
        super.viewDidLoad()
        vc = MenuSideRoot(rootViewController: SideMenuViewController())
        SideMenuManager.default.menuRightNavigationController = vc
        menuBtn.addTarget(self, action: #selector(menuTabbed), for: .touchUpInside)
        // Do any additional setup after loading the view.
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       segmentDesign()
    }
    
    func segmentDesign()  {
        segmantControl.clipsToBounds = true
        segmantControl.layer.borderWidth = 1
        segmantControl.layer.borderColor = UIColor(displayP3Red: 246/255, green: 193/255, blue: 202/255, alpha: 1).cgColor
        let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor(displayP3Red: 246/255, green: 193/255, blue: 202/255, alpha: 1)]
        segmantControl.setTitleTextAttributes(titleTextAttributes1, for: .normal)
        
    }
    @objc func menuTabbed(){
        present(vc!, animated: true, completion: nil)
    }
    
}
