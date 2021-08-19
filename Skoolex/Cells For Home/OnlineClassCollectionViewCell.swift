//
//  OnlineClassCollectionViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit

class OnlineClassCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var vocabLabel: UILabel!
    @IBOutlet weak var lessonNameLabel: UILabel!
    @IBOutlet weak var remainingLabel: UILabel!
        @IBOutlet weak var vocabImageView: UIImageView!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var attendBtn: UIButton!
    @IBOutlet weak var endDateLabel: UILabel!
    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpDesginCell()
        // Initialization code
    }
    func setUpDesginCell(){
        mainView.clipsToBounds = true
        mainView.layer.cornerRadius = 10
   //     mainView.layer.borderWidth = 1
        mainView.layer.shadowOffset = .zero
        mainView.layer.shadowRadius = 10
        attendBtn.clipsToBounds = true
        attendBtn.layer.cornerRadius = 8
        
    }

}
