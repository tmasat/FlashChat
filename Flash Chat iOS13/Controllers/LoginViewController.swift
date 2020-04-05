//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Çağrı Tuğberk Masat on 5.04.2020.
//  Copyright © 2020 Tugberk Masat. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        //UnComment it to realise !
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                guard let strongSelf = self else { return }
                if let Error = error {
                    print(Error)
                } else {
                    let vc = self?.storyboard?.instantiateViewController(withIdentifier: Constants.chatIds) as? ChatViewController
                    self?.navigationController?.pushViewController(vc!, animated: true)
                }
            }
        }
        //For TEST !
//        let vc = storyboard?.instantiateViewController(withIdentifier: Constants.chatIds) as? ChatViewController
//        navigationController?.pushViewController(vc!, animated: true)
    }
}
