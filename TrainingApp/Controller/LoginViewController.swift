//
//  ViewController.swift
//  TrainingApp
//
//  Created by Atdhe Boshnjaku on 3/10/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "goToHome" {

            let homeViewController = segue.destination as? HomeViewController
            let user = User(name: userNameTextField.text ?? "", email: "", address: "", number: "")
            homeViewController?.user = user

        }

    }
    
    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
        
        if identifier == "goToHome" {
            if userNameTextField.text == "" && passwordTextField.text == "" {
                let alert = UIAlertController(
                    title: "Whoops!",
                    message: "Please enter your username and password!",
                    preferredStyle: .alert)
                alert.addAction(UIAlertAction(
                    title: NSLocalizedString("Let me try again!",
                    comment: "Default action"),
                    style: .default))
                self.present(alert, animated: true, completion: nil)
                return false
            }
        }
        return true
        
    }
    
}

