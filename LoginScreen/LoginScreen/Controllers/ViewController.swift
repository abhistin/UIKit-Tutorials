//
//  ViewController.swift
//  LoginScreen
//
//  Created by Abhishek Bhardwaj on 11/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func validateFields() {
        let email = emailField.text?.trimmingCharacters(in: .whitespaces) ?? ""
        let password = passwordField.text?.trimmingCharacters(in: .whitespaces) ?? ""
        if email.isEmpty && password.isEmpty {
            let alert = UIAlertController(title: "Invalid details", message: "Please enter your email and password", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
        else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let welcomeVC = storyboard.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
            present(welcomeVC, animated: true)
        }
        }
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        validateFields()
    }
    
}

