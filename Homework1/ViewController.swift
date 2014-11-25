//
//  ViewController.swift
//  Homework1
//
//  Created by Kieley, James P on 9/21/14.
//  Copyright (c) 2014 Kieley, James P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var AgeLabel: UILabel!
    @IBOutlet var CreateButton: UIButton!
    @IBOutlet var UsernameField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func usernameTrigger(sender: UITextField) {
        //AgeLabel.text = "Username"
    }
    @IBAction func onUsernameChange(sender: AnyObject) {
        AgeLabel.text = UsernameField.text
    }

    @IBAction func OnCreate(sender: AnyObject) {
        
    }
}

