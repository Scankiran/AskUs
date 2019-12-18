//
//  QuestionPageViewController.swift
//  AskUs
//
//  Created by Mac on 18.12.2019.
//  Copyright © 2019 Said Cankiran. All rights reserved.
//

import UIKit

class QuestionPageViewController: UIViewController {
    var titleLen: String? = ""
    var quest: String = ""
    var answers:[String] = []
    
    @IBOutlet var ans1: UILabel!
    @IBOutlet var ans2: UILabel!
    @IBOutlet var ans3: UILabel!
    @IBOutlet var ans4: UILabel!
    @IBOutlet var questView: UIView!
    @IBOutlet var answerQ: UIView!
    @IBOutlet var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ans1.layer.cornerRadius = 20
        ans2.layer.cornerRadius = 20
        ans3.layer.cornerRadius = 20
        ans4.layer.cornerRadius = 20
        
        sendButton.layer.cornerRadius = 40
        questView.layer.cornerRadius = 20
        answerQ.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
