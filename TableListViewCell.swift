//
//  TableListViewCell.swift
//  Jay
//
//  Created by DMITRY FILACHEV on 14.05.2020.
//  Copyright © 2020 POLINA FILACEVA. All rights reserved.
//

import UIKit

class TableListViewCell: UITableViewCell {

    @IBOutlet weak var textList: UITextView!
    @IBOutlet weak var lableList: UILabel!
    @IBOutlet weak var imageList: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
