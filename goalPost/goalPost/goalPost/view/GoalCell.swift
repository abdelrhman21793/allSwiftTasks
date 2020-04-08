//
//  GoalCell.swift
//  goalPost
//
//  Created by abdelrhman hesham on 3/24/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBOutlet weak var GoalDescriptionLabel: UILabel!
    @IBOutlet weak var GoalTypeLabel: UILabel!
    @IBOutlet weak var GoalProgressLabel: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal : Goal)  {
        self.GoalDescriptionLabel.text = goal.goalDescription
        self.GoalTypeLabel.text = goal.goalType
        self.GoalProgressLabel.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalComplitionValu {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }
    
}
