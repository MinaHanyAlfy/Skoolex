//
//  ProfileTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 30/06/2021.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var entityImageView: UIImageView!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defineLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        //set the values for top,left,bottom,right margins
       // let margins = UIEdgeInsets(top: 0, left: 0, bottom: 4, right: 0)
     //  contentView.frame = contentView.frame.inset(by: margins)
    }
    
    
}
