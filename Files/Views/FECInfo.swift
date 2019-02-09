//
//  FECInfo.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/9/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class FECPageView: UIViewController {
    
    let realm = try! Realm()
        
    @IBOutlet weak var addressOneField: UITextField!
    @IBOutlet weak var addressTwoField: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zip: UITextField!
    @IBOutlet weak var occupation: UITextField!
    @IBOutlet weak var employer: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        // cheating need to fix this
        let currDonor = RealmHelper.retrieveDonorWithFirstName("Cassandra")
        try! realm.write {
            currDonor.street = addressOneField.text!
            currDonor.streetTwo = addressTwoField.text!
            currDonor.city = city.text!
            currDonor.state = state.text!
            currDonor.zip = Int(zip.text!)!
            currDonor.occupation = occupation.text!
            currDonor.employer = employer.text!
            currDonor.email = email.text!
            currDonor.phone = phone.text!
        }
    }
}
