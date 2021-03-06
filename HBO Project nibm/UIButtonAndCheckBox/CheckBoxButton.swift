//
//  CheckBoxButton.swift
//  HBO Project nibm
//
//  Created by Anjalee on 1/18/20.
//  Copyright © 2020 Anjalee Abenayaka. All rights reserved.
//

import UIKit

class CheckBoxButton: UIButton {

    // Images
    let checkedImage = UIImage(named: "Checked")! as UIImage
    let uncheckedImage = UIImage(named: "Unchecked")! as UIImage
    
    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: UIControl.State.normal)
            } else {
                self.setImage(uncheckedImage, for: UIControl.State.normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }

}
