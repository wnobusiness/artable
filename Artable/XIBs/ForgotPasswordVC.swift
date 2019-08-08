//
//  ForgotPasswordVC.swift
//  Artable
//
//  Created by Krishna Torrence on 8/8/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import UIKit
import Firebase

class ForgotPasswordVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var emailTxt: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //Actions
    @IBAction func cancelClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func resetClicked(_ sender: Any) {
        guard let email = emailTxt.text,  email.isNotEmpty else {
            simpleAlert(title: "Error", msg: "Please enter email")
            return
            
        }
        Auth.auth().sendPasswordReset(withEmail: email) { (error) in
            if let error = error {
                debugPrint(error)
                Auth.auth().handleFireAuthError(error: error, vc: self)
                return
            }
            self.dismiss(animated: true, completion: nil)
        }
    }
}
