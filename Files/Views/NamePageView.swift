//
//  NamePageView.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/9/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class NamePageView: UIViewController {

    let realm = try! Realm()
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Name page appeared")
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//        let currDonor = Donor()
//        currDonor.firstName = firstNameField.text!
//        currDonor.lastName = lastNameField.text!
//        try! realm.write {
//            realm.add(currDonor)
//        }
//        return
//    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        let currDonor = Donor()
        currDonor.firstName = firstNameField.text!
        currDonor.lastName = lastNameField.text!
        try! realm.write {
            realm.add(currDonor)
        }
    }
}
