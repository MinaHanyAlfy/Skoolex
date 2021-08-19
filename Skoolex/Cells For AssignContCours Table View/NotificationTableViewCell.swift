//
//  NotificationTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 25/06/2021.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var kindImageView: UIImageView!
    @IBOutlet weak var newNotficationImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpDesgin()
        // Initialization code
    }
    private func setUpDesgin(){
        newNotficationImageView.clipsToBounds = true
        newNotficationImageView.layer.cornerRadius = newNotficationImageView.frame.width / 2 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
