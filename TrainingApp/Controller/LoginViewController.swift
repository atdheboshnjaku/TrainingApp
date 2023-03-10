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
            let user = User(name: userNameTextField.text ?? "", email: "", address: "", number: 0)
            homeViewController?.user = user

        }

    }
    
}

