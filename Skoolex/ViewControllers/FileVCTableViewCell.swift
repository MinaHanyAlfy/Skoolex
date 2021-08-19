//
//  FileVCTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 04/07/2021.
//

import UIKit

class FileVCTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var publishLabel: UILabel!
    @IBOutlet weak var kindLabel: UILabel!
    @IBOutlet weak var subjectTitleLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
