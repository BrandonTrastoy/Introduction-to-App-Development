//
//  ViewController.swift
//  CIS240 Lab 2
//
//  Created by Brandon Trastoy on 10/1/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headLabel: UILabel!
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func helloButton(_ sender: Any) {
        
        let name = self.nameTextField.text!
        
        if (name == " ")
        {
            greetingLabel.text = "Please Input Your Name Below"
            
        }

        self.greetingLabel.text = "Hello \(name)"
        
    }
    
    @IBAction func goodbyeButton(_ sender: Any) {
        
        let name = self.nameTextField.text!
        
        if (name == " ")
        {
            greetingLabel.text = "Please Input Your Name Below"
            
        }
        self.greetingLabel.text = "Goodbye \(name)"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

