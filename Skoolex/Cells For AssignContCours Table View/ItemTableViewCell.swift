//
//  ItemTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit
import Cosmos
class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var rateCosmosView: CosmosView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var messageImageView: UIImageView!
    @IBOutlet weak var teacherNameLabel: UILabel!
    @IBOutlet weak var lessonNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setUpDesign(){
        mainView.clipsToBounds = true
        mainView.layer.cornerRadius = 16
    }
    
}
