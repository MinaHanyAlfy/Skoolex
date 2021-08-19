//
//  HomeTableViewCell.swift
//  Skoolex
//
//  Created by Petra Software on 24/06/2021.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var homeCollectionView: UICollectionView!
    var indexForCell : Int? = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        registerCells()
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        // Initialization code
    }
    func registerCells(){
        homeCollectionView.register(UINib(nibName: "QuizCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "QuizCollectionViewCell")
        homeCollectionView.register(UINib(nibName: "AssignmentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AssignmentCollectionViewCell")
        homeCollectionView.register(UINib(nibName: "OnlineClassCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OnlineClassCollectionViewCell")
        homeCollectionView.register(UINib(nibName: "ContentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ContentCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func kind(index: Int)  {
        indexForCell = index
    }
    
}
extension HomeTableViewCell : UICollectionViewDelegate ,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
   
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexForCell {
        case 0:
            let quizCell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "QuizCollectionViewCell", for: indexPath) as! QuizCollectionViewCell
            if indexPath.row % 2 == 0 {
                quizCell.mainViewCell.backgroundColor = UIColor(displayP3Red: 248/255, green: 215/255, blue: 214/255, alpha: 1)
            }
            return quizCell
        case 1:
            let assignCell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "AssignmentCollectionViewCell", for: indexPath) as! AssignmentCollectionViewCell
            if indexPath.row % 2 == 0 {
                assignCell.mainView.backgroundColor = UIColor(displayP3Red: 248/255, green: 215/255, blue: 214/255, alpha: 1)
            }
            return assignCell
        case 2:
            let onlineClassCell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "OnlineClassCollectionViewCell", for: indexPath) as! OnlineClassCollectionViewCell
            if indexPath.row % 2 == 0 {
                onlineClassCell.mainView.backgroundColor = UIColor(displayP3Red: 248/255, green: 215/255, blue: 214/255, alpha: 1)
            }
            return onlineClassCell
        default:
            let contentCell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell", for: indexPath) as! ContentCollectionViewCell
            if indexPath.row % 2 == 0 {
                contentCell.mainView.backgroundColor = UIColor(displayP3Red: 248/255, green: 215/255, blue: 214/255, alpha: 1)
            }
            return contentCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: homeCollectionView.frame.width / 1.3 , height: homeCollectionView.frame.height )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}
