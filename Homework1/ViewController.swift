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
    @IBOutlet var AgeSlider: UISlider!
    @IBOutlet var SexSelector: UISegmentedControl!
    
    
    var username: NSString!
    var age: Int!
    var sex: NSString!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSexByIndex(SexSelector.selectedSegmentIndex) // init to the default selected
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onUsernameChange(sender: UITextField) {
        // AgeLabel.text = UsernameField.text
        username = sender.text
    }

    @IBAction func OnCreate(sender: AnyObject) {

        
    }
    @IBAction func ageOnChange(sender: UISlider) {
        var currentAge = Int(sender.value)
        AgeLabel.text = "\(currentAge)"
        age = currentAge
    }
    @IBAction func onSexChange(sender: UISegmentedControl) {
        setSexByIndex(sender.selectedSegmentIndex)
    }
    
    func setSexByIndex(index: Int){
        if(index == 0){
            sex = "Male";
        }else{
            sex = "Female";
        }
    }
}

