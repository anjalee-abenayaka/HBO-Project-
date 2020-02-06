//
//  UILoginViewController.swift
//  HBO Project nibm
//
//  Created by Anjalee on 1/18/20.
//  Copyright © 2020 Anjalee Abenayaka. All rights reserved.
//

import UIKit
import FirebaseAuth

class UILoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnLogin(_ sender: Any) {
        
        let alert = AlertDialog();
        
        Auth.auth().signIn(withEmail: txtEmail.text!, password: txtPass.text!) { (user, error) in
            if error != nil {
                
                alert.showAlert(title: "Error occured", message: "You have error with your mail and password", buttonText: "Dashboard")
            }
            else if user != nil {
                
                alert.showAlert(title: "Signed in successfuly", message: "You have been successfully Signed In", buttonText: "Dashboard")
                
                let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
                
                let navController = UINavigationController(rootViewController: VC1)
                
                self.present(navController, animated:true, completion: nil)
            }
        }
            }
        }

    

