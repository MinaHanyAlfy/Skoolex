//
//  AssignTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 01/07/2021.
//

import UIKit

class AssignTableViewCell: UITableViewCell {

    @IBOutlet weak var checkedIV: UIImageView!
    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var endDateLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var remainLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var assIV: UIImageView!
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
