//
//  AssignmentCollectionViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit

class AssignmentCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var assNumLabel: UILabel!
    @IBOutlet weak var remainingLabel: UILabel!
    @IBOutlet weak var assImageView: UIImageView!
    @IBOutlet weak var lessonNameLabel: UILabel!
    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var endDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpDesginCell()
    }
    func setUpDesginCell(){
        mainView.clipsToBounds = true
        mainView.layer.cornerRadius = 10
        mainView.layer.shadowOffset = .zero
        mainView.layer.shadowRadius = 10
        startBtn.clipsToBounds = true
        startBtn.layer.cornerRadius = 8
        
    }
    
}
