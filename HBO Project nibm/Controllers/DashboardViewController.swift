//
//  DashboardViewController.swift
//  HBO Project nibm
//
//  Created by Anjalee on 1/26/20.
//  Copyright © 2020 Anjalee Abenayaka. All rights reserved.
//

import UIKit
import LocalAuthentication

class DashboardViewController: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func FaceId(_ sender: Any) {
        
        let context:LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Message"){ (good, error) in
                if good{
                    print("Good")
                } else{
                    print("Try Again")
                }
            }

        }
    }
}
