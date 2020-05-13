//
//  triviaViewController.swift
//  Lab 6 Brandon Trastoy
//
//  Created by Brandon Trastoy on 12/5/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class triviaViewController: UIViewController {
    
    var currentInfo : info?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var triviaInformationLabel: UITextView!
    @IBAction func dismissButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        
        let name = ((currentInfo?.name)! + " - " + (currentInfo?.sportModel)!)
        nameLabel.text = name
        
        let trivia = currentInfo?.trivia
        triviaInformationLabel.text = trivia
        
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
