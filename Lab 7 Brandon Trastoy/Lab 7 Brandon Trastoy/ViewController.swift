//
//  ViewController.swift
//  Lab 7 Brandon Trastoy
//
//  Created by Brandon Trastoy on 12/8/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var index : Int = 0
    
    var arrayTuple =  [
        ("Left Arrow", UIImage(named: "left")),
        ("Right Arrow", UIImage(named: "right"))
    ]
    
    @IBAction func leftButton(_ sender: Any) {
        
        index = 0
        let (title, filename) = arrayTuple[index]
    }
    
    @IBAction func rightButton(_ sender: Any) {
        
        index = 1
        let (title, filename) = arrayTuple[index]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let nextScene = segue.destination as! SecondViewController
        // Pass the selected object to the new view controller.
        let selected = arrayTuple[index]
        //if let indexPath = self.tableView.indexPathForSelectedRow {
            
        //}
    }


}

