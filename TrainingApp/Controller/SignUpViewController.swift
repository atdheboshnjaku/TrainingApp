//
//  SignUpViewController.swift
//  TrainingApp
//
//  Created by Atdhe Boshnjaku on 3/10/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
        
        if passwordTextField.text != repeatPasswordTextField.text {
            
            let alert = UIAlertController(
                title: "Whoops!",
                message: "Passwords don't match",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(
                title: NSLocalizedString("Let me try again!",
                comment: "Default action"),
                style: .default))
            self.present(alert, animated: true, completion: nil)
            
        } else if userNameTextField.text == "" || passwordTextField.text == "" || repeatPasswordTextField.text == "" || emailTextField.text == "" || addressTextField.text == "" || numberTextField.text == "" {
            
            let alert = UIAlertController(
                title: "Missing fields!",
                message: "Please make sure you fill in all fields",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(
                title: NSLocalizedString("Ok",
                comment: "Default action"),
                style: .default))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let userViewController = storyboard.instantiateViewController(withIdentifier: "goToHome") as? HomeViewController {
                
                let user = User(name: userNameTextField.text ?? "", email: emailTextField.text ?? "", address: addressTextField.text ?? "", number: numberTextField.text ?? "")
                userViewController.user = user
                
                self.navigationController?.pushViewController(userViewController, animated: true)
                
            }
        }
        
    }
    

}
