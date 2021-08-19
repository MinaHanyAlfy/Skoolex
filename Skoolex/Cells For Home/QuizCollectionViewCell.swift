//
//  QuizCollectionViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit

class QuizCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var testNumLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var lessonNameLabel: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var quizImageView: UIImageView!
    @IBOutlet weak var mainViewCell: UIView!
    @IBOutlet weak var dateNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpDesginCell()
        // Initialization code
    }
    //MARK:- SetUpDesginCell
    func setUpDesginCell(){
        mainViewCell.clipsToBounds = true
        mainViewCell.layer.cornerRadius = 10
       // mainViewCell.layer.borderWidth = 1
        mainViewCell.layer.shadowOffset = .zero
        mainViewCell.layer.shadowRadius = 10
        startBtn.clipsToBounds = true
        startBtn.layer.cornerRadius = 8

        
    }

}
