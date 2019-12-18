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
    
    @IBOutlet var menüProfile: UIButton!
    @IBOutlet var menüAboutUs: UIButton!
    @IBOutlet var menuFaq: UIButton!
    @IBOutlet var menuLogout: UIButton!
    @IBOutlet var menüBack: UIButton!
    @IBOutlet var Notifback: UIButton!
    
    var homeQuest:[String] = [
        "What are dormitory and accommodation options?",
        "Are there student dormitories around the university?",
        "Is it more affordable to stay in the dormitory or stay at home?",
        "What are the relationships with dormitory friends and dormitory management?",
        "Do they have girls' dormitories near the university?"
    ]
    var educationQuest:[String] = [
        "What are the job issues that graduates work in?",
        "Which departments for postgraduate education increase my chances?",
        "What is the role of the university in the employment process after graduation?",
        "What is the relationship between students and teachers in the learning process?",
        "What benefits does a mentor teacher have?",
        "Which faculties are available on campus?"
    ]
    var mealQuest:[String] = [
        "Is there a cafeteria in college?  How many?",
        "Are there any cafes where we can spend time at the university?",
        "Can we eat except the cafeteria?",
        "Are the food coming out of the cafeteria good quality?",
        "Is there a market in the university where I can shop?"
    ]
    var otherQuest:[String] = [
        "Is there a health care provider that I can reach within the university?",
        "Is there a library in the university where I can go to study? How many? What is the density status?",
        "Is there any events or festivals that the university has enabled?",
        "What are the transportation sources that I can use when i go to university and walk around in the university?",
        "Does the university offer scholarships?"
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons:[UIButton] = [menüProfile,menüAboutUs,menuFaq,menuLogout,menüBack,Notifback]
        
        for i in buttons {
            i.layer.cornerRadius = 15
        }
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
    @IBAction func homeCat(_ sender: Any) {
        gidilenSayfa = "HOME"
        performSegue(withIdentifier: "goToQuest", sender: self)
    }
    @IBAction func educationCat(_ sender: Any) {
        gidilenSayfa = "EDUCATION"
        performSegue(withIdentifier: "goToQuest", sender: self)
    }
    @IBAction func mealCat(_ sender: Any) {
        gidilenSayfa = "MEAL"
        performSegue(withIdentifier: "goToQuest", sender: self)
    }
    @IBAction func otherCat(_ sender: Any) {
        gidilenSayfa = "OTHER"
        performSegue(withIdentifier: "goToQuest", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CathegorizeViewController
        vc.cathegorize = gidilenSayfa
        if gidilenSayfa == "HOME" {
            vc.questions = homeQuest
        } else if gidilenSayfa == "EDUCATION" {
            vc.questions = educationQuest
        } else if gidilenSayfa == "MEAL" {
            vc.questions = mealQuest
        } else if gidilenSayfa == "OTHER" {
            vc.questions = otherQuest
        }
        
    }
}
