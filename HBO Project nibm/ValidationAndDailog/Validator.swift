//
//  Validator.swift
//  HBO Project nibm
//
//  Created by Anjalee on 1/18/20.
//  Copyright © 2020 Anjalee Abenayaka. All rights reserved.
//

import Foundation
class ValidateFields {
    
    func usernameValid(username : String) -> Bool {
        return username.count > 5
    }
    func passwordValid(password : String) -> Bool {
        return password.count > 8
    }
    
    func validateMovieForm(name: String,director: String,rating : String) -> Bool{
        
        if(name.count>3 && director.count>3 &&  (Int(rating) != nil)){
            
            return true;
        }
        return false;
        
    }
    
}
