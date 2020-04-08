//
//  CreatGoalVC.swift
//  goalPost
//
//  Created by abdelrhman hesham on 3/24/20.
//  Copyright © 2020 abdelrhman hesham. All rights reserved.
//

import UIKit

class CreatGoalVC: UIViewController , UITextViewDelegate{

    @IBOutlet weak var goaTextViewCreatGoalVC: UITextView!
    @IBOutlet weak var shortTermBTNCreatGoalVC: UIButton!
    @IBOutlet weak var longTermBTNCreatGoalVC: UIButton!
    @IBOutlet weak var nextBTNCreatGoalVc: UIButton!
    
    var goalType : GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBTNCreatGoalVc.bindToKeyboard()
        shortTermBTNCreatGoalVC.setSelectedColor()
        longTermBTNCreatGoalVC.setDeselectedColor()
        goaTextViewCreatGoalVC.delegate = self

    }
    
    @IBAction func nextBTNWasPressed(_ sender: Any) {
        if goaTextViewCreatGoalVC.text != "" && goaTextViewCreatGoalVC.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goaTextViewCreatGoalVC.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    @IBAction func shortTermBTNWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBTNCreatGoalVC.setSelectedColor()
        longTermBTNCreatGoalVC.setDeselectedColor()
    }
    @IBAction func longTermBTNWasPreesed(_ sender: Any) {
        goalType = .longTerm
        longTermBTNCreatGoalVC.setSelectedColor()
        shortTermBTNCreatGoalVC.setDeselectedColor()
    }
    @IBAction func backBTNWasPressed(_ sender: Any) {
        dissmissDetial()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goaTextViewCreatGoalVC.text = ""
        goaTextViewCreatGoalVC.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
    }
}
