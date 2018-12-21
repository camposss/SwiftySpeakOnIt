//
//  LoginViewController.swift
//  SpeakOnIt
//
//  Created by Mark Lintner on 12/18/18.
//  Copyright © 2018 Campos Swift Tutorials. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.image = UIImage(named: "sound-waves")
        
    }
    
    
    @IBAction func onLogin(_ sender: UIButton) {
        //if credentials are good perform segue
        //for now will just perform segue
    }
}
