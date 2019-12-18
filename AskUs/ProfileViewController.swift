//
//  ProfileViewController.swift
//  AskUs
//
//  Created by Mac on 18.12.2019.
//  Copyright © 2019 Said Cankiran. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var name: UILabel!
    @IBOutlet var nameand: UILabel!
    @IBOutlet var first: UILabel!
    @IBOutlet var second: UILabel!
    @IBOutlet var third: UILabel!
    @IBOutlet var firstAns: UILabel!
    @IBOutlet var secondAns: UILabel!
    @IBOutlet var thirdAns: UILabel!
    @IBOutlet var delete: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.layer.cornerRadius = 45/2
        nameand.layer.cornerRadius = 45/2
        first.layer.cornerRadius = 45/2
        second.layer.cornerRadius = 45/2
        third.layer.cornerRadius = 45/2
        firstAns.layer.cornerRadius = 45/2
        secondAns.layer.cornerRadius = 45/2
        thirdAns.layer.cornerRadius = 45/2
        delete.layer.cornerRadius = 15
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
