//
//  LoginVC.swift
//  segues
//
//  Created by Xavier Eggen on 11.04.17.
//  Copyright © 2017 Xavier Eggen. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    private var loginIsActive = false
    
    private var accountIsSetup = false

    @IBOutlet weak var emailLogin: UITextField!
    
    @IBOutlet weak var passwordLogin: UITextField!
    
    @IBOutlet weak var reenterPasswordLogin: UITextField!
    
    @IBOutlet var swichLoginModeBtn: UIButton!
    
    @IBAction func switchLoginMode(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "New User? Sign Up" {
            
            reenterPasswordLogin.isHidden = false
            swichLoginModeBtn.setTitle("Existing User? Sign In", for: .normal)
            accountIsSetup = false
        } else {

            reenterPasswordLogin.isHidden = true
            swichLoginModeBtn.setTitle("New User? Sign Up", for: .normal)
            accountIsSetup = true
            
        }
    }
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        
        if accountIsSetup {
            
            FIRAuth.auth()?.signIn(withEmail: emailLogin.text!, password: passwordLogin.text!, completion: { (user, error) in
                if error != nil {
                    print("xeggen: Unable to authenticate with Firebase - \(error!)")
                } else {
                    print("xeggen: Successfully authenticated with Firebase")
                }
                
            })
        } else {
            
            FIRAuth.auth()?.createUser(withEmail: emailLogin.text!, password: passwordLogin.text!, completion: { (result, error) in
                if error != nil {
                    print("xeggen: Unable to sign up new user with Firebase - \(error!)")
                } else {
                    print("xeggen: Successfully signed up new user with Firebase")
                }

            })
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

