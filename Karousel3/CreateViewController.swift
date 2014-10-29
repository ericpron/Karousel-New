//
//  CreateViewController.swift
//  20141021_Carousel
//
//  Created by Eric Eriksson on 10/27/14.
//  Copyright (c) 2014 Eric Eriksson. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var createFormWrapper: UIView!
    @IBOutlet weak var termCheckbox: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // listen for the appearance of keyboard
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "kbShown:", name: UIKeyboardWillShowNotification, object: nil)
    }
    
    func kbShown(notification: NSNotification) {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.createFormWrapper.frame.origin.y = 60
        })
    }
    
    @IBAction func dismissCreateView(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func tapTermsAgreementCheckbox(sender: AnyObject) {
        
        if ( termCheckbox.selected == false ) {
            termCheckbox.selected = true
        } else {
            termCheckbox.selected = false
        }
        
    }
    
    
    
    
    // handle keyboard appearance and shifting of form field
//    func kbShown(notification: NSNotification) {
//        UIView.animateWithDuration(0.4, animations: {
//            self.signInButtonCluster.center.y = 290
//            
//        })
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
