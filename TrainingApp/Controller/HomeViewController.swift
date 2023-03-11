//
//  HomeViewController.swift
//  TrainingApp
//
//  Created by Atdhe Boshnjaku on 3/10/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var user: User?
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userAddress: UILabel!
    @IBOutlet weak var userNumber: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userNameLabel.text = user?.name ?? ""
        userEmail.text = user?.email ?? ""
        userAddress.text = user?.address ?? ""
        userNumber.text = user?.number ?? ""
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
