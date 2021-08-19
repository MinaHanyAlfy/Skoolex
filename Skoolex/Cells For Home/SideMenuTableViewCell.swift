//
//  SideMenuTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var menuImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.clipsToBounds = true
        mainView.layer.cornerRadius = 18
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        //set the values for top,left,bottom,right margins
        let margins = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        contentView.frame = contentView.frame.inset(by: margins)
    }
    
}
