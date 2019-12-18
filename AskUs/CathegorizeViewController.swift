//
//  CathegorizeViewController.swift
//  AskUs
//
//  Created by Mac on 18.12.2019.
//  Copyright © 2019 Said Cankiran. All rights reserved.
//

import UIKit

class CathegorizeViewController: UIViewController {
    var questions:[String] = []
    
    var cathegorize:String = ""
    
    var mealQuestionAns:[[String]] = [[
        "There are 3 refectory in the school. one in the Yakut mart. In the center of the university there is a central cafeteria.Great place. you certainly will.",
        "there is a cafeteria in the theology faculty. They can put more food."
        ],
        
        [   "At the entrance of the university there is the bazaar of olbia. there are many cafes and fast food restaurants.",
            
            "There are many cafes in the Yakut mart where you can have lunch. Choose what you want and eat.",
            
            "If you have some money, there is Ceypark down the university. a martr with high quality shops."
        ],
        
        [  "Unless you bring food from home or dormitory, it's a little hard to eat from outside the university.",
            
            "Since lunch is 50 min, it is hard to go and eat and come back to class. If you can do it."
        ],
        
        [   "Mostly yes. Not if you're so used to mama food.",
            
            "You can choose according to the published menu. but always be aware that eating out can disrupt your economic balance."
        ],
        
        [   "There are several shops in the Yakut mart for clothing and cosmetics. you can go to ceypark for stationery.",
            
           " Irecommend the Olbia mart for photocopying. both cheap and good quality."
        ]
    
    ]
    
    var answer1:[String] = []
    var answer2:[String] = []
    var answer3:[String] = []
    var answer4:[String] = []
    var answer5:[String] = []
    var answer6:[String] = []
    
    @IBOutlet var quest1: UIButton!
    @IBOutlet var quest2: UIButton!
    @IBOutlet var quest3: UIButton!
    @IBOutlet var quest4: UIButton!
    @IBOutlet var quest5: UIButton!
    @IBOutlet var quest6: UIButton!
    @IBOutlet var addQuest: UIButton!
    
    @IBOutlet var cathegorizeName: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        quest1.layer.cornerRadius = 27.5
        quest2.layer.cornerRadius = 27.5
        quest3.layer.cornerRadius = 27.5
        quest4.layer.cornerRadius = 27.5
        quest5.layer.cornerRadius = 27.5
        quest6.layer.cornerRadius = 27.5
        
        addQuest.layer.cornerRadius = 40
        
        cathegorizeName.setTitle(cathegorize, for: .normal)
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
