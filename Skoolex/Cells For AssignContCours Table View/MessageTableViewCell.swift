//
//  MessageTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var senderLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var newNotificationImageView: UIImageView!
    @IBOutlet weak var timeDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpDesgin()
        // Initialization code
    }
    private func setUpDesgin(){
        newNotificationImageView.clipsToBounds = true
        newNotificationImageView.layer.cornerRadius = newNotificationImageView.frame.width / 2
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
