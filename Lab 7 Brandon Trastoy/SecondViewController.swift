//
//  SecondViewController.swift
//  Lab 7 Brandon Trastoy
//
//  Created by Brandon Trastoy on 12/15/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var selectedTuple : arrayTuple? //(title : String, filename: UIImage) = ("", (named: ""))
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
