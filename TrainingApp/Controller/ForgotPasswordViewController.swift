//
//  ForgotPasswordViewController.swift
//  TrainingApp
//
//  Created by Atdhe Boshnjaku on 3/10/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var oldPasswordTextField: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changePasswordButtonPressed(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "goToHome" {

            let homeViewController = segue.destination as? HomeViewController
            let user = User(name: "Atdhe", email: "atdhe@atdhe.com", address: "Gjakove", number: "045100100")
            homeViewController?.user = user

        }

    }
    
    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
        
        if identifier == "goToHome" {
            if oldPasswordTextField.text == "" || newPasswordTextField.text == "" || repeatPasswordTextField.text == "" {
                let alert = UIAlertController(
                    title: "Missing fields!",
                    message: "Please make sure you fill in all the fields",
                    preferredStyle: .alert)
                alert.addAction(UIAlertAction(
                    title: NSLocalizedString("Ok",
                    comment: "Default action"),
                    style: .default))
                self.present(alert, animated: true, completion: nil)
                return false
            }
            
            if newPasswordTextField.text != repeatPasswordTextField.text {
                
                let alert = UIAlertController(
                    title: "Whoops!",
                    message: "Passwords don't match",
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
