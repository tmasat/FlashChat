//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Çağrı Tuğberk Masat on 5.04.2020.
//  Copyright © 2020 Tugberk Masat. All rights reserved.
//

import UIKit


class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = Constants.appName
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: Constants.loginIds) as? LoginViewController
        navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func registerButtonPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: Constants.registerIds) as? RegisterViewController
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}





