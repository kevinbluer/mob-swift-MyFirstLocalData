//
//  RegisterLogin.swift
//  Flocate
//
//  Created by Kevin Bluer on 8/24/14.
//  Copyright (c) 2014 Bluer Inc. All rights reserved.
//

import UIKit
import Foundation
import QuartzCore

class RegisterLoginViewController: UIViewController {
    
    override func viewDidLoad() {
   
    }
    
    @IBAction func loginButtonTouchUp(sender: AnyObject) {
        
        var myValue:NSString = "kevin"
        
        NSUserDefaults.standardUserDefaults().setObject(myValue, forKey:"Username")
        
        self.dismissViewControllerAnimated(true, completion: {})
    }}