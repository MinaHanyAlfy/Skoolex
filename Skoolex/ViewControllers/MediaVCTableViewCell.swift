//
//  MediaVCTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 04/07/2021.
//

import UIKit

class MediaVCTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var maibView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var subjectTitleLabel: UILabel!
    @IBOutlet weak var publishLabel: UILabel!
    @IBOutlet weak var kindLabel: UILabel!
    @IBOutlet weak var mediaImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
