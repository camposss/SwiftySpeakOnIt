//
//  RegisterViewController.swift
//  SpeakOnIt
//
//  Created by Mark Lintner on 12/18/18.
//  Copyright © 2018 Campos Swift Tutorials. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.image = UIImage(named: "sound-waves")
    }
}
