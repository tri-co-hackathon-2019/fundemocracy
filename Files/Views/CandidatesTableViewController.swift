//
//  CandidatesTableViewController.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/9/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

struct Cand {var firstName: String
    var lastName: String
    var position: String
    var cycle: Int
    var party: String }

class CandidatesTableViewController: UITableViewController {
    
    let realm = try! Realm()
    
    
    var headlines = [
        Cand(firstName: "Monica",lastName:"Taylor",position:"Delaware County Council",cycle:2019,party:"D"),
        Cand(firstName:"Larry",lastName:"Arata",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Sharon",lastName:"Booker",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Brett",lastName:"Burman",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Anthony",lastName:"Moore",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Tinu",lastName:"Moss",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Robert",lastName:"Radich",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Christine",lastName:"Reuther",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Elaine",lastName:"Paul Schaefer",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Richard",lastName:"Womack",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName:"Andrew E",lastName:"Nelson",position:"Delaware County Council",cycle:    2019,party:"D"),
        Cand(firstName: "William Al",lastName:"Jacobs",position:"Delaware County Council",cycle:2019,party:"D"),
        Cand(firstName:"Vania",lastName:"Guevara",position:"Phoenix City Council District 5    ",cycle:2019,party:"D"),
        Cand(firstName:"Audrey",lastName:"Bell-Jenkins",position:"Phoenix City Council District 5",cycle:2019,party:"D"),
        Cand(firstName:"Betty",lastName:"Guardado",position:"Phoenix City Council District 5    ",cycle:2019,party:"D"),
        Cand(firstName:"Lydia",lastName:"Hernandez",position:"Phoenix City Council District 5    ",cycle:2019,party:"D"),
        Cand(firstName:"Nathan",lastName:"Schick",position:"Phoenix City Council District 5    ",cycle:2019,party:"D"),
        Cand(firstName:"Kate",lastName:"Gallego",position:"Phoenix City Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Daniel",lastName:"Valenzuela", position:"Phoenix City Mayor",cycle:    2019,party:"D"),
        Cand(firstName:"Gilbert",lastName:"Arvizu",position:"Phoenix City Council District 8"    ,cycle:2019,party:"R"),
        Cand(firstName:"Margarito",lastName:"Blancas",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Carlos",lastName:"Garcia",position:"Phoenix City Council District 8"    ,cycle:2019,party:"D"),
        Cand(firstName:"Michael",lastName:"Johnson",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Michael J.",lastName:"Lan​gley",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Jarrett B.",lastName:"Maupin, Jr.",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Lawrence",lastName:"Robinson",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Camaron",lastName:"Stevenson",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Warren",lastName:"Stewart, Jr.",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Onesimus A.",lastName:"Strachan",position:"Phoenix City Council District 8",cycle:2019,party:"D"),
        Cand(firstName:"Gery",lastName:"Chico",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Bill",lastName:"Daley",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Amara",lastName:"Enyia",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Bob",lastName:"Fioretti",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"La Shawn",lastName:"Ford",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Jerry",lastName:"Joyce",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"John",lastName:"Kozlar",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Lori",lastName:"Lightfoot",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Garry",lastName:"McCarthy",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Susana",lastName:"Mendoza",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Toni",lastName:"Preckwinkle",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Neal",lastName:"Sáles-Griffin",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Paul",lastName:"Vallas",position:"Chicago Mayor",cycle:2019,party:"D"),
        Cand(firstName:"Willie",lastName:"Wilson",position:"Chicago Mayor",cycle:2019,party:"D")]
    
    var scores = [374,342,317,320,322,293,328,287,343,315,319,371,265,284,361,392,288,341,317,268,285,293,308,294,368,381,357,314,292,329,332,321,343,272,313,371,341,355,324,332,375,355,313]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 100
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CandidateCell", for: indexPath)
        
        let headline = headlines[indexPath.row]
        let cellStr = "\(headline.firstName) \(headline.lastName), \(headline.position)\r\(headline.cycle), \(headline.party)"
        cell.textLabel?.text = cellStr
        //cell.imageView?.image = UIImage(named: headline.image)
        
        return cell
    }
    
}
