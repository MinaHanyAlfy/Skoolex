//
//  SettingsTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 30/06/2021.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var settingsVersionLabel: UILabel!
    @IBOutlet weak var settingsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
