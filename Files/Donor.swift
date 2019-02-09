//
//  Donor.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/8/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import RealmSwift

class Donor: Object {
    
    // total amount donated
    @objc dynamic var amount = 0
    // dictionary where key = candidate object
    // val = amount donated to candidate in total
    //@objc dynamic var history: [Candidate:Float] = [:]
    // FEC mandatory information
    @objc dynamic var firstName = ""
    @objc dynamic var lastName = ""
    @objc dynamic var street = ""
    @objc dynamic var streetTwo = ""
    @objc dynamic var city = ""
    @objc dynamic var state = ""
    @objc dynamic var zip = 0
    @objc dynamic var occupation = ""
    @objc dynamic var employer = ""
    @objc dynamic var email = ""
    @objc dynamic var phone = ""
    
    // target groups
    @objc dynamic var donateM = true
    @objc dynamic var donateF = true
    @objc dynamic var donateQ = true
    @objc dynamic var minorityFocus = false
    
    // policy areas to be ranked, defined by Congress
    // www.congress.gov/help/field-values/policy-area
    @objc dynamic var agricultureandFood = 0
    @objc dynamic var animals = 0
    @objc dynamic var armedForcesandNationalSecurity = 0
    @objc dynamic var artsCultureReligion = 0
    @objc dynamic var civilRightsandLibertiesMinorityIssues = 0
    @objc dynamic var commerce = 0
    @objc dynamic var congress = 0
    @objc dynamic var crimeandLawEnforcement = 0
    @objc dynamic var economicsAndPublicFinance = 0
    @objc dynamic var education = 0
    @objc dynamic var emergencyManagement = 0
    @objc dynamic var energy = 0
    @objc dynamic var environmentalProtection = 0
    @objc dynamic var families = 0
    @objc dynamic var finance = 0
    @objc dynamic var foreignTrade = 0
    @objc dynamic var governmentOperations = 0
    @objc dynamic var health = 0
    @objc dynamic var housingandCommDevelopment = 0
    @objc dynamic var immigration = 0
    @objc dynamic var internationalAffairs = 0
    @objc dynamic var laborandEmployment = 0
    @objc dynamic var law = 0
    @objc dynamic var nativeAmericans = 0
    @objc dynamic var publicLands = 0
    @objc dynamic var stem = 0
    @objc dynamic var socialSciences = 0
    @objc dynamic var socialWelfare = 0
    @objc dynamic var sportsandRec = 0
    @objc dynamic var taxation = 0
    @objc dynamic var transportation = 0
    @objc dynamic var waterResourceDev = 0

}
