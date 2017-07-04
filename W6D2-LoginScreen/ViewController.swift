//
//  ViewController.swift
//  W6D2-LoginScreen
//
//  Created by Admin on 2016-10-11.
//  Copyright © 2016 ToyBox Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        UIView.animate(withDuration: 2, delay: 1, options: [], animations: { [weak self] in
            
            guard let centerX = self?.view.center.x else { return }
            
            self?.passwordTextField.center.x = centerX
            
        }, completion: nil)
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        for constraint in view.constraints {
            if constraint.identifier == "usernameCenterX"{
                
                constraint.isActive = false
                
                view.centerXAnchor.constraint(equalTo: usernameTextField.centerXAnchor).isActive = true
                
                UIView.animate(withDuration: 2.0) {
                    self.view.layoutIfNeeded()
                }
                
                break
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
