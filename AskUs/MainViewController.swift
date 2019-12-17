//
//  MainViewController.swift
//  AskUs
//
//  Created by Mac on 17.12.2019.
//  Copyright © 2019 Said Cankiran. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var gidilenSayfa = ""
    @IBOutlet var kategoriHorCons: UIView!
    @IBOutlet var kategoriHorCons2: NSLayoutConstraint!
    @IBOutlet var notificationsHorCons: NSLayoutConstraint!
    @IBOutlet var menuHorCons: NSLayoutConstraint!
    @IBOutlet var lastQuestHorCons: NSLayoutConstraint!
    
    @IBOutlet var lastQuestOut: UIButton!
    @IBOutlet var homeOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeButton(_ sender: Any) {
        lastQuestOut.backgroundColor = UIColor.init(red: 94/255, green: 223/255, blue: 244/255, alpha: 1)
        homeOutlet.backgroundColor = UIColor.init(red: 52/255, green: 255/255, blue: 184/255, alpha: 1)
        UIView.animate(withDuration: 1) {
            self.kategoriHorCons2.constant = 0
            self.lastQuestHorCons.constant = 450
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func lastQuestionButton(_ sender: Any) {
        homeOutlet.backgroundColor = UIColor.init(red: 94/255, green: 223/255, blue: 244/255, alpha: 1)
        lastQuestOut.backgroundColor = UIColor.init(red: 52/255, green: 255/255, blue: 184/255, alpha: 1)
        UIView.animate(withDuration: 1) {
            self.kategoriHorCons2.constant = -450
            self.lastQuestHorCons.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func notificationButton(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.notificationsHorCons.constant = 58
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func notBackButton(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.notificationsHorCons.constant = 450
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func menuButton(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.menuHorCons.constant = -90
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func menuBack(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.menuHorCons.constant = -450
            self.view.layoutIfNeeded()
        }
        
    }
}
