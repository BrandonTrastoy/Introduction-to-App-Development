//
//  bestAndGreatTableViewController.swift
//  Lab 6 Brandon Trastoy
//
//  Created by Brandon Trastoy on 12/1/17.
//  Copyright © 2017 Brandon Trastoy. All rights reserved.
//

import UIKit

class bestAndGreatTableViewController: UITableViewController {
    
    var greatestAthletes = [info]()
    var bestCars = [info]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var great = info(name: "Bruce Lee", sportModel: "Martial Arts", filename: "Lee", trivia: "Bruce Lee’s kicks were so fast that while filming for one scene in Enter the Dragon, they had to re-film it in slow motion (34 frames) so that it wouldn’t appear fake. Lee was also known to be a great Cha-Cha dancer. He had won the Hong Kong Cha-Cha Championship in 1958.")
        greatestAthletes.append(great)
        
        great = info(name: "Muhammed Ali", sportModel: "Boxing", filename: "Ali", trivia: "Muhammad Ali born Cassius Marcellus Clay Jr. on January 17, 1942. He changed his name to Muhammad Ali in 1964 after joining Nation of Islam. In his autobiography, Ali states that he threw his Olympic gold medal into the Ohio River after being refused service at a ‘whites-only’ restaurant, and fighting with a white gang.")
        greatestAthletes.append(great)
        
        great = info(name: "Micheal Jordan", sportModel: "Basket Ball", filename: "Jordan", trivia: "His full name is Michael Jeffrey Jordan and is famously known as MJ. Jordan is the first athlete in history to become a billionaire. ")
        greatestAthletes.append(great)
        
        great = info(name: "Usain Bolt", sportModel: "Track", filename: "Bolt", trivia: "He adopted a cheetah, the worlds fastest animal. He loves cricket. Bolt holds the worlds fastest record of sprinting 100m in 9.58s.")
        greatestAthletes.append(great)
        
        great = info(name: "Pele", sportModel: "Soccer", filename: "Pele", trivia: "Pele was named after American inventor Thomas Edison, his real name being Edson Arantes do Nascimiento. Pele scored a total of 1,283 first-class goals, including 77 for Brazil. He won three World Cups, two World Club Championships and nine Sao Paulo State Championships.")
        greatestAthletes.append(great)
        
        var best = info(name: "Koenigsegg", sportModel: "Agera R", filename: "Koen", trivia: "On 1 October 2017, the Agera RS made the 0–400–0 km/h (0–249–0 mph) record in 36.44 seconds, 5.56 seconds faster than the record made by the Bugatti Chiron.")
        bestCars.append(best)
        
        best = info(name: "Bugatti", sportModel: "Veyron", filename: "Bugatti", trivia: "The Bugatti Veyron EB 16.4 is a mid-engined sports car, designed and developed in Germany by the Volkswagen Group and manufactured in Molsheim, France, by Bugatti Automobiles S.A.S., named after the racing driver Pierre Veyron.")
        bestCars.append(best)
        
        best = info(name: "Lamborghini", sportModel: "Egoista", filename: "Lambo", trivia: "The Lamborghini Egoista is a concept car unveiled by Lamborghini for the company's 50th anniversary. The fully functioning model is based on the Gallardo.")
        bestCars.append(best)
        
        best = info(name: "Tesla", sportModel: "Roadster", filename: "Tesla", trivia: "n expected 0-60 time of 1.9 seconds for this second generation Roadster means it will be the quickest production car ever made. In addition, the car is expected to hit the quarter mile in 8.9 seconds and hit a top speed of at least 250 mph.")
        bestCars.append(best)
        
        best = info(name: "SSC", sportModel: "Ultimate Aero", filename: "SSC", trivia: "The SSC Ultimate Aero held the title of the fastest production car in the world, according to the Guinness World Records, from 2007 (when it was officially timed at 256.14 mph (412.22 km/h)) until the introduction of the Bugatti Veyron Super Sport in 2010.")
        bestCars.append(best)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if (section == 0) {
            return greatestAthletes.count }
        else {
            return bestCars.count }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = greatestAthletes[indexPath.row].name
        }
            
        else {
            cell.textLabel?.text = bestCars[indexPath.row].name
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return sections[0]
        } else {
            return sections[1]
        }
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let nextScene = segue.destination as! InfoViewController
        // Pass the selected object to the new view controller.
        if let indexPath = self.tableView.indexPathForSelectedRow {
            
            
            if (indexPath.section == 0) {
                let selectedStruct = greatestAthletes[indexPath.row]
                nextScene.currentClickedInfo = selectedStruct
            }
                
            else {
                let selectedStruct = bestCars[indexPath.row]
                nextScene.currentClickedInfo = selectedStruct
                
            }
        }
    }
}
