//
//  CollectionViewCell-one.swift
//  Jay
//
//  Created by POLINA FILACEVA on 12.03.2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit

class CollectionViewCell_one: UICollectionViewCell {
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var ingCell: UIImageView!
    @IBOutlet weak var textOne: UITextView!
    @IBOutlet weak var imageRating: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    var isLiked:Bool = false  {
        didSet {
            if isLiked {
                likeButton.setImage(UIImage(named: "markFill.png"), for: .normal)
            } else {
                likeButton.setImage(UIImage(named: "mark.png"), for: .normal)
            }
        }
    }
    
    var delegate:CollectionViewCell_one?
    
        @IBAction func likeButtonTapped(sender: AnyObject) {
            delegate?.didLikeButtonPressed(cell: self)
        }
    }

    protocol TripCollectionCellDelegate {
        func didLikeButtonPressed(cell: CollectionViewCell_one)
}
