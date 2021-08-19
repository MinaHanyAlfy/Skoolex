//
//  NewMessageView.swift
//  Skoolex
//
//  Created by Petra Software on 01/07/2021.
//

import UIKit

class NewMessageView: UIView {
    @IBOutlet weak var backGroundView: UIView!
  
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    class func instanceFromNib() -> NewMessageView {
            let view = UINib(nibName: "NewMessageView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! NewMessageView
        
            return view
    }

}

