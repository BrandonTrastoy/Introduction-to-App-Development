//
//  ViewController.swift
//  Lab3BrandonTrastoy
//
//  Created by student on 10/9/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var imageCaptionLabel: UILabel!
    
    @IBOutlet weak var thumb1ImageView: UIImageView!
    
    @IBOutlet weak var thumb2ImageView: UIImageView!
    
    @IBOutlet weak var thumb3ImageView: UIImageView!

    @IBAction func thumb1Button(_ sender: Any) {
        
        let key = "Baby Pug.jpeg"
        mainImageViewerFunction(key : key)
        self.thumb1ImageView.layer.borderWidth = 4
        self.thumb1ImageView.layer.borderColor = UIColor.red.cgColor
        
        clearHighlights()
        
    }
    
    @IBAction func thumb2Button(_ sender: Any) {
        
        let key = "Fearful Pug.jpeg"
        mainImageViewerFunction(key : key)
        self.thumb2ImageView.layer.borderWidth = 4
        self.thumb2ImageView.layer.borderColor = UIColor.green.cgColor
        
        clearHighlights()
    }
    
    @IBAction func thumb3Button(_ sender: Any) {
        
        let key = "Lazy Pug.jpeg"
        mainImageViewerFunction(key : key)
        self.thumb3ImageView.layer.borderWidth = 4
        self.thumb3ImageView.layer.borderColor = UIColor.red.cgColor
     
        clearHighlights()
    }
    
    
    

    override func viewDidLoad() {
        
        imageViewerFunction()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func clearHighlights() {
        
        self.thumb1ImageView.layer.borderWidth = 0
        self.thumb2ImageView.layer.borderWidth = 0
        self.thumb3ImageView.layer.borderWidth = 0
    }
    
    // This function creates a dictionary and returns it, (for multiple uses) -----------------
    func imageDictionaryFunction() -> Dictionary<String, String> {
        
        let imageDictionary : Dictionary <String, String> =
            ["Baby Pug.jpeg" : "This pug is a puppy.",
             "Fearful Pug.jpeg" : "This pug is afraid.",
             "Lazy Pug.jpeg" : "This pug is fat."]
        
        
        return imageDictionary
    }
    // ----------------------------------------------------------------------------------------
    
    
    
    
    // This function calls the dictionary function, then assigns a image to each UI -----------
    func imageViewerFunction() {
        
        let imageDictionary : Dictionary <String, String> = imageDictionaryFunction()
        
        for (key,_) in imageDictionary {
            
            if (key == "Baby Pug.jpeg") {
                
                self.thumb1ImageView.image = UIImage(named: "Baby Pug.jpeg")
                self.thumb1ImageView.contentMode = UIViewContentMode.scaleAspectFit
    

            }
            
            else if (key == "Fearful Pug.jpeg") {
                
                self.thumb2ImageView.image = UIImage(named: "Fearful Pug.jpeg")
                self.thumb2ImageView.contentMode = UIViewContentMode.scaleAspectFit
            }
            
            else if (key == "Lazy Pug.jpeg") {
                
                self.thumb3ImageView.image = UIImage(named: "Lazy Pug.jpeg")
                self.thumb3ImageView.contentMode = UIViewContentMode.scaleAspectFit
            }
            
        }
        
    }
    // ----------------------------------------------------------------------------------------
    
    
    
    
    // This function calls the dictionary function, then sets main image and label ------------
    func mainImageViewerFunction(key : String) {
        
        let imageDictionary : Dictionary <String, String> = imageDictionaryFunction()
        
        if (key == "Baby Pug.jpeg") {
            
            self.mainImageView.image = UIImage(named: key)
            self.imageCaptionLabel.text = imageDictionary[key]
            
        }
            
        else if (key == "Fearful Pug.jpeg") {
            
            self.mainImageView.image = UIImage(named: key)
            self.imageCaptionLabel.text = imageDictionary[key]
        }
            
        else if (key == "Lazy Pug.jpeg") {
            
            self.mainImageView.image = UIImage(named: key)
            self.imageCaptionLabel.text = imageDictionary[key]
        }
     
        self.mainImageView.contentMode = UIViewContentMode.scaleAspectFit
            
        
    
    }
    // ----------------------------------------------------------------------------------------
    
 
}

//Used this sight for the border, didn't totally steal it.
//https://www.hackingwithswift.com/example-code/calayer/how-to-add-a-border-outline-color-to-a-uiview
