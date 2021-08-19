//
//  ContentCollectionViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var lessonNameLabel: UILabel!
    
    @IBOutlet weak var attendBtn: UIButton!
    @IBOutlet weak var publishedDateLabel: UILabel!
    @IBOutlet weak var publishLabel: UILabel!
    @IBOutlet weak var grammerLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpDesginCell()
        // Initialization code
    }
    func setUpDesginCell(){
        mainView.clipsToBounds = true
        mainView.layer.cornerRadius = 10
  //    mainView.layer.borderWidth = 1
        mainView.layer.shadowOffset = .zero
        mainView.layer.shadowRadius = 10
        attendBtn.clipsToBounds = true
        attendBtn.layer.cornerRadius = 8
        
    }
}
