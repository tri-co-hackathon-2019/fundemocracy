//
//  PreferenceTableViewController.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/9/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

struct Policy {
    var ind : Int
    var id : String
    var title : String
    //var image : String
    
}

class PreferenceTableViewController: UITableViewController {
    
    let realm = try! Realm()
    
    var headlines = [
        Policy(ind: 1, id: "agricultureandFood", title: "Agriculture and Food"),
        Policy(ind: 2, id: "animals", title: "Animals"),
        Policy(ind: 3, id: "armedForcesandNationalSecurity", title: "Armed Forces and National Security"),
        Policy(ind: 4, id: "artsCultureReligion", title: "Arts, Culture, and Religion"),
        Policy(ind: 5, id: "civilRightsandLibertiesMinorityIssues", title: "Civil Rights and Minority Issues"),
        Policy(ind: 6, id: "commerce", title: "Commerce"),
        Policy(ind: 7, id: "congress", title: "Congress"),
        Policy(ind: 8, id: "crimeandLawEnforcement", title: "Crime and Law Enforcement"),
        Policy(ind: 9, id: "economicsAndPublicFinance", title: "Economics and Public Finance"),
        Policy(ind: 10, id: "education", title: "Education"),
        Policy(ind: 11, id: "emergencyManagement", title: "Emergency Management"),
        Policy(ind: 12, id: "energy", title: "Energy"),
        Policy(ind: 13, id: "environmentalProtection", title: "Environmental Protection"),
        Policy(ind: 14, id: "families", title: "Families"),
        Policy(ind: 15, id: "finance", title: "Finance"),
        Policy(ind: 16, id: "foreignTrade", title: "Foreign Trade"),
        Policy(ind: 17, id: "governmentOperations", title: "Government Operations"),
        Policy(ind: 18, id: "health", title: "Health"),
        Policy(ind: 19, id: "housingandCommDevelopment", title: "Housing and Community Development"),
        Policy(ind: 20, id: "immigration", title: "Immigration"),
        Policy(ind: 21, id: "internationalAffairs", title: "International Affairs"),
        Policy(ind: 22, id: "laborandEmployment", title: "Laborand Employment"),
        Policy(ind: 23, id: "nativeAmericans", title: "Native Americans"),
        Policy(ind: 24, id: "publicLands", title: "Public Lands"),
        Policy(ind: 25, id: "stem", title: "Science and Technology"),
        Policy(ind: 26, id: "socialSciences", title: "Social Sciences"),
        Policy(ind: 27, id: "socialWelfare", title: "Social Welfare"),
        Policy(ind: 28, id: "sportsandRec", title: "Sports and Recreation"),
        Policy(ind: 29, id: "taxation", title: "Taxation"),
        Policy(ind: 30, id: "transportation", title: "Transportation"),
        Policy(ind: 31, id: "waterResourceDev", title: "Water Resource Development"),
        Policy(ind: 32, id: "law", title: "Law")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.isEditing = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
        
        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        //cell.imageView?.image = UIImage(named: headline.image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = self.headlines[sourceIndexPath.row]
        headlines.remove(at: sourceIndexPath.row)
        headlines.insert(movedObject, at: destinationIndexPath.row)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        let currDonor = RealmHelper.retrieveDonorWithFirstName("Cassandra")
            var index = 1
            for pol in headlines {
                RealmHelper.setPolIndex(currDonor, pol: pol.id, ind: index)
                index += 1
            }
        print(currDonor)
    }
}
