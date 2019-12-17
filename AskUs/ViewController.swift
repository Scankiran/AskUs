//
//  ViewController.swift
//  AskUs
//
//  Created by Mac on 16.12.2019.
//  Copyright © 2019 Said Cankiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var loginViewHorCons: NSLayoutConstraint!
    @IBOutlet var image: UIImageView!
    @IBOutlet var beginButton: NSLayoutConstraint!
    @IBOutlet var girisbuton: UIButton!
    @IBOutlet var kayitbuton: UIButton!
    @IBOutlet var beginButonnnn: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var signUpViewHorCons: NSLayoutConstraint!
    @IBOutlet var signGeri: UIButton!
    @IBOutlet var signKayit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginViewHorCons.constant  =  500
        signUpViewHorCons.constant = -500
        girisbuton.layer.cornerRadius = 15
        kayitbuton.layer.cornerRadius = 15
        beginButonnnn.layer.cornerRadius = 20
        backButton.layer.cornerRadius = 15
        signGeri.layer.cornerRadius = 15
        signKayit.layer.cornerRadius = 15
    }

    @IBAction func letBegin(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.image.alpha = 0
            self.loginViewHorCons.constant = 0
            self.view.layoutIfNeeded()
            self.beginButton.constant = -500
            self.view.layoutIfNeeded()
        }
    }
    @IBAction func geriButonu(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.image.alpha = 1
            self.loginViewHorCons.constant = 500
            self.view.layoutIfNeeded()
            self.beginButton.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    @IBAction func kayıtButonu(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            
            self.loginViewHorCons.constant = 500
            self.signUpViewHorCons.constant = 0
            self.view.layoutIfNeeded()
        }
        
    }
    @IBAction func kayıtGeri(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.loginViewHorCons.constant = 0
            self.signUpViewHorCons.constant = -500
            self.view.layoutIfNeeded()
        }
        
        
    }
    @IBAction func yönlenMoruk(_ sender: Any) {
        performSegue(withIdentifier: "fromLogin", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}

