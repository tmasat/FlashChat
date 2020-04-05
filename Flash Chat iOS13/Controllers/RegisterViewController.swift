//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Çağrı Tuğberk Masat on 5.04.2020.
//  Copyright © 2020 Tugberk Masat. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let Error = error {
                    print(Error)
                } else {
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: Constants.chatIds) as? ChatViewController
                    self.navigationController?.pushViewController(vc!, animated: true)
                }
            }
        }
    }
}
