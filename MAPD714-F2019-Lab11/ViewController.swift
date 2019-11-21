/*
 Assignment 4 - MAPD714
 Name: Dalwinder Singh, Vishal Patel
 
 Description: Using Firebase and CocoaPods for User Authentication with Email/Password
 Version 1.2
 */
 
import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    @IBAction func CreateButton(_ sender: UIButton) {
        let email = emailText.text
        let pass = passText.text
        
        //For Creating a new User
        Auth.auth().createUser(withEmail: email!, password: pass!) { authResult, error in
            print("Created New User")
        }
    }
    
    @IBAction func LoginButton(_ sender: UIButton) {
        let email = emailText.text
        let pass = passText.text
        
        //For existing users
        Auth.auth().signIn(withEmail: email!, password: pass!) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            print("User Login Successfull")
        }
    }
}

