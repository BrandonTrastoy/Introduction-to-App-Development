//
//  InfoViewController.swift
//  Lab 6 Brandon Trastoy
//
//  Created by Brandon Trastoy on 12/1/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var currentClickedInfo : info?
    
    @IBOutlet weak var athleteOrCar: UIImageView!
    @IBOutlet weak var SportOrMakeLabel: UILabel!
    
    override func viewDidLoad() {
            
        let image = UIImage(named: currentClickedInfo!.filename)
        athleteOrCar.image = image
        
        let modelSport = currentClickedInfo?.sportModel
        SportOrMakeLabel.text = modelSport
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let thirdScene = segue.destination as! triviaViewController
        // Pass the selected object to the new view controller.
        thirdScene.currentInfo = self.currentClickedInfo
    }
}
