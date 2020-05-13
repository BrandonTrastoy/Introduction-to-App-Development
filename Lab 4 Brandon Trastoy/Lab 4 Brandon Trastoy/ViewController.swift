//
//  ViewController.swift
//  Lab 4 Brandon Trastoy
//
//  Created by student on 10/19/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Global Variables
    // ==========================================================================
    
    var number : Int = 0
    var symbol : Int = 0
    var displayedValue : Int = 0
    var previousNumber : Int = 0
    var performedAction : DarwinBoolean = false
    
    // ==========================================================================
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func zeroButton(_ sender: Any) {
        
        number = 0
        displayNumber()
        
    }

    @IBAction func oneButton(_ sender: Any) {
        
        number = 1
        displayNumber()
    }
    
    @IBAction func twoButton(_ sender: Any) {
        
        number = 2
        displayNumber()
    }
    
    @IBAction func threeButton(_ sender: Any) {
        
        number = 3
        displayNumber()
    }
    
    @IBAction func fourButton(_ sender: Any) {
        
        number = 4
        displayNumber()
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        
        number = 5
        displayNumber()
    }
    
    @IBAction func sixButton(_ sender: Any) {
        
        number = 6
        displayNumber()
    }
   
    @IBAction func sevenButton(_ sender: Any) {
        
        number = 7
        displayNumber()
    }
    
    @IBAction func eightButton(_ sender: Any) {
        
        number = 8
        displayNumber()
    }
    
    @IBAction func nineButton(_ sender: Any) {
        
        number = 9
        displayNumber()
    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        symbol = 1 // Plus
        
        //plusButton.layer.borderWidth = 1
        mathSymbolPushed()
    }
    
    @IBAction func minusButton(_ sender: Any) {
        
        symbol = 2 // Minus
        mathSymbolPushed()
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        
        symbol = 3 //Multiply
        mathSymbolPushed()
    }
    
    @IBAction func divideButon(_ sender: Any) {
        
        symbol = 4 //Divide
        mathSymbolPushed()
    }
    
    @IBAction func equalButton(_ sender: Any) {
        
        equalPushed()
    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        symbol = 0
        number = 0
        performedAction = false
        displayLabel.text = "0"
        displayedValue = Int(displayLabel.text!)!
        
    
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // This function takes the value of the button pushed, then adds it onto the 
    // end of the displayed number. It will not enter a number if the displayed 
    // value is zero.
    // ==========================================================================
    
    func displayNumber() {
        
        if displayedValue == 0 {
            
            displayLabel.text = String(number)
            displayedValue = Int(displayLabel.text!)!
          
        }
        
        else {
            
            displayLabel.text = displayLabel.text! + String(number)
            displayedValue = Int(displayLabel.text!)!
        }
        
    }
    
    // ==========================================================================
    
    
    
    // This function sets the displayed value to a different var, then highlights 
    // the button that is being pressed
    // ==========================================================================
    
    func mathSymbolPushed() {
        
        if performedAction == false {
        
            previousNumber = displayedValue
            displayedValue = 0
            number = 0
        }
        
        performedAction = true
   
    }
    
    // ==========================================================================
    
    

    // This Function calculates the answer when the equal button is pushed
    // ==========================================================================
    
    func equalPushed() {
        
        
        if symbol > 0 {
            
            if symbol == 1 {
                
                displayLabel.text = String(previousNumber + displayedValue)
            }
            
            else if symbol == 2 {
                
                displayLabel.text = String(previousNumber - displayedValue)
            }
            
            else if symbol == 3 {
                
                displayLabel.text = String(previousNumber * displayedValue)
            }
            
            else if symbol == 4 {
                
                var decimalNumber1 : Float = 0.0
                var decimalNumber2 : Float = 0.0
                
                decimalNumber1 = Float(previousNumber)
                decimalNumber2 = Float(displayedValue)
                
                displayLabel.text = String(decimalNumber1 / decimalNumber2)
            }
            
        }
        symbol = 0
        displayedValue = Int(displayLabel.text!)!
        performedAction = false
        
    }
    
    // ==========================================================================

    
    
}

