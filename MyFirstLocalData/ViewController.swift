//
//  ViewController.swift
//  MyFirstLocalData
//
//  Created by Kevin Bluer on 9/9/14.
//  Copyright (c) 2014 Bluer Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // attempt to get the username from NSUserDefaults
        var username: AnyObject? = NSUserDefaults.standardUserDefaults().objectForKey("Username")
        
        // see if the user exists, otherwish present the RegisterLogin ViewController
        if (username == nil) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewControllerWithIdentifier("signup") as UIViewController;
            self.presentViewController(vc, animated: true, completion: nil);
        }
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonReset(sender: AnyObject) {
        
        NSUserDefaults.standardUserDefaults().removeObjectForKey("Username")
        
        var alert = UIAlertController(title: "Done", message: "You've cleared the user data", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
    }

}

