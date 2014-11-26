//
//  ViewController.swift
//  Homework1
//
//  Created by Kieley, James P on 9/21/14.
//  Copyright (c) 2014 Kieley, James P. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate {


    @IBOutlet var AgeLabel: UILabel!
    @IBOutlet var CreateButton: UIButton!
    @IBOutlet var UsernameField: UITextField!
    @IBOutlet var AgeSlider: UISlider!
    @IBOutlet var SexSelector: UISegmentedControl!
    var tapGestureRecognizer: UITapGestureRecognizer!
    var user : User = User()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSexByIndex(SexSelector.selectedSegmentIndex) // init to the default selected
        UsernameField.text = user.username
        AgeSlider.setValue(Float(user.age),animated: true)
        
        let recognizer = UITapGestureRecognizer(target: self, action:Selector("handleTap:"))
        recognizer.delegate = self
        view.addGestureRecognizer(recognizer)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onUsernameChange(sender: UITextField) {
        // AgeLabel.text = UsernameField.text
        user.username = sender.text
    }

    @IBAction func OnCreate(sender: AnyObject) {
        println("username: "+user.username)
        println("sex: "+user.sex)
        println("age: "+"\(user.age)")
        
    }
    
    @IBAction func ageOnChange(sender: UISlider) {
        var currentAge = Int(sender.value)
        AgeLabel.text = "\(currentAge)"
        user.age = currentAge
    }
    @IBAction func onSexChange(sender: UISegmentedControl) {
        setSexByIndex(sender.selectedSegmentIndex)
    }
    
    func setSexByIndex(index: Int){
        if(index == 0){
            user.sex = "Male";
        }else{
            user.sex = "Female";
        }
    }
    
    func handleTap(recognizer: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
}

