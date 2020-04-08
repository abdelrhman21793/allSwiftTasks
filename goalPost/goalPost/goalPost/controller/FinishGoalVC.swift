//
//  FinishGoalVC.swift
//  goalPost
//
//  Created by abdelrhman hesham on 3/24/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit
import CoreData


class FinishGoalVC: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var creatGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    override func viewDidLoad() {
        super.viewDidLoad()
creatGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
   
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dissmissDetial()
    }
    
    @IBAction func creatGoalBtnWasPressed(_ sender: Any) {
    dissmissDetial()
    }

    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalComplitionValu = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully saved data.")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
