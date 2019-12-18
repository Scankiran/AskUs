//
//  AddQuestViewController.swift
//  AskUs
//
//  Created by Mac on 18.12.2019.
//  Copyright © 2019 Said Cankiran. All rights reserved.
//

import UIKit

class AddQuestViewController: UIViewController {
    
    @IBOutlet var cathegorizeTitle: UIButton!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var titleView: UIView!
    @IBOutlet var questionView: UIView!
    
    
    var asd :String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        deleteButton.layer.cornerRadius = 20
        sendButton.layer.cornerRadius = 20
        titleView.layer.cornerRadius = 20
        questionView.layer.cornerRadius = 20
        cathegorizeTitle.setTitle(asd, for: .normal)
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
