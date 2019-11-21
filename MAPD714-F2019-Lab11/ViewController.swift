//
//  ViewController.swift
//  MAPD714-F2019-Lab11
//
//  Created by Student on 2019-11-20.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    @IBAction func CreateButton(_ sender: UIButton) {
        let email = emailText.text
        let pass = passText.text
        
        Auth.auth().createUser(withEmail: email!, password: pass!) { authResult, error in
            print("Created New User")
        }
    }
    
    @IBAction func LoginButton(_ sender: UIButton) {
        let email = emailText.text
        let pass = passText.text
        
        Auth.auth().signIn(withEmail: email!, password: pass!) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            print("User Login Successfull")
        }
    }
}

