//
//  LoginViewController.swift
//  20141021_Carousel
//
//  Created by Eric Eriksson on 10/21/14.
//  Copyright (c) 2014 Eric Eriksson. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailLoginField: UITextField!
    @IBOutlet weak var passwordLoginField: UITextField!
    @IBOutlet weak var signInImagePseudoButton: UIImageView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInButtonCluster: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "kbShown:", name: UIKeyboardWillShowNotification, object: nil)
    }
    
    func kbShown(notification: NSNotification) {
        UIView.animateWithDuration(0.2, animations: {
            self.signInButtonCluster.center.y = 290
            
        })
    }

    
    // below from hoydb
    
    // pseudo form field validation
    func processInput(email: String, password: String) {
        
        var email = email.lowercaseString
        var password = password.lowercaseString
        if (email == "e" && password == "e") {
            println("correct")
        performSegueWithIdentifier("segueToOnboarding", sender: self)
            
            
        } else {
            println("Incorrect")
            
            let signInFailedAlert = UIAlertView()
            signInFailedAlert.title = "Sign In Failed"
            signInFailedAlert.message = "Incorrect email or password."
            signInFailedAlert.addButtonWithTitle("Ok")
            signInFailedAlert.show()
        }
    }
    
    
    
    // handle sign in request
    @IBAction func onSignInTap(sender: AnyObject) {
        
        // handle blank email field
        if (emailLoginField.text == "") {
            let noEmailAlert = UIAlertView()
            noEmailAlert.title = "Email Required"
            noEmailAlert.message = "Please enter your email address."
            noEmailAlert.addButtonWithTitle("Ok")
            noEmailAlert.show()
            
            // performSegueWithIdentifier("loginModalSegue", sender: self)
        
        // handle blank pw field
        } else if (passwordLoginField.text == "") {
            let noPasswordAlert = UIAlertView()
            noPasswordAlert.title = "Password Required"
            noPasswordAlert.message = "Please enter your password."
            noPasswordAlert.addButtonWithTitle("Ok")
            noPasswordAlert.show()
        
        // handle email and pw validation
        } else {
            let validatingSignInCredsAlert = UIAlertView()
            validatingSignInCredsAlert.title = "Signing in…"
            validatingSignInCredsAlert.show()
            
            delay(2, { () -> () in
                // core of pseudo validation in processInput
                self.processInput(self.emailLoginField.text, password: self.passwordLoginField.text)
                validatingSignInCredsAlert.dismissWithClickedButtonIndex(0, animated: true)
            })
            
        }
        
    }
    
    
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
}
