//
//  AlertDialog.swift
//  HBO Project nibm
//
//  Created by Anjalee on 1/18/20.
//  Copyright © 2020 Anjalee Abenayaka. All rights reserved.
//

import Foundation
import UIKit
class AlertDialog {
    func showAlert(title: String,message: String,buttonText: String)  {
        let alert = UIAlertView()
        alert.title = title
        alert.message = message
        alert.addButton(withTitle: buttonText)
        alert.show()
    }
}
