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
    
    
    var username: NSString = ""
    var age: Int = 0
    var sex: NSString!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSexByIndex(SexSelector.selectedSegmentIndex) // init to the default selected
        UsernameField.text = username
        AgeSlider.setValue(Float(age),animated: true)
        
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
        username = sender.text
    }

    @IBAction func OnCreate(sender: AnyObject) {
        println("username: "+username)
        println("sex: "+sex)
        println("age: "+"\(age)")
        
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
    
    func handleTap(recognizer: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
}

