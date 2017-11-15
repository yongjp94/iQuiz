//
//  QuizCell.swift
//  iQuiz
//
//  Created by John Park on 11/11/17.
//  Copyright © 2017 Yongjun Park. All rights reserved.
//

import UIKit

class QuizCell: UITableViewCell {

	@IBOutlet weak var title: UILabel!
	@IBOutlet weak var subTitle: UILabel!
	@IBOutlet weak var quizCover: UIImageView!
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
