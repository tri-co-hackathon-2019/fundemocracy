//
//  Candidate.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/8/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import RealmSwift

class Candidate: Object {
    @objc dynamic var firstName = ""
    @objc dynamic var lastName = ""
    @objc dynamic var position = ""
    @objc dynamic var cycle = ""
    @objc dynamic var party = ""
    @objc dynamic var gender = ""
    @objc dynamic var lgbt = false
    @objc dynamic var first = true
    @objc dynamic var minority = false

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
    
    @objc dynamic var agricultureandFoodBlurb = ""
    @objc dynamic var animalsBlurb = ""
    @objc dynamic var armedForcesandNationalSecurityBlurb = ""
    @objc dynamic var artsCultureReligionBlurb = ""
    @objc dynamic var civilRightsandLibertiesMinorityIssuesBlurb = ""
    @objc dynamic var commerceBlurb = ""
    @objc dynamic var congressBlurb = ""
    @objc dynamic var crimeandLawEnforcementBlurb = ""
    @objc dynamic var economicsAndPublicFinanceBlurb = ""
    @objc dynamic var educationBlurb = ""
    @objc dynamic var emergencyManagementBlurb = ""
    @objc dynamic var energyBlurb = ""
    @objc dynamic var environmentalProtectionBlurb = ""
    @objc dynamic var familiesBlurb = ""
    @objc dynamic var financeBlurb = ""
    @objc dynamic var foreignTradeBlurb = ""
    @objc dynamic var governmentOperationsBlurb = ""
    @objc dynamic var healthBlurb = ""
    @objc dynamic var housingandCommDevelopmentBlurb = ""
    @objc dynamic var immigrationBlurb = ""
    @objc dynamic var internationalAffairsBlurb = ""
    @objc dynamic var laborandEmploymentBlurb = ""
    @objc dynamic var lawBlurb = ""
    @objc dynamic var nativeAmericansBlurb = ""
    @objc dynamic var publicLandsBlurb = ""
    @objc dynamic var stemBlurb = ""
    @objc dynamic var socialSciencesBlurb = ""
    @objc dynamic var socialWelfareBlurb = ""
    @objc dynamic var sportsandRecBlurb = ""
    @objc dynamic var taxationBlurb = ""
    @objc dynamic var transportationBlurb = ""
    @objc dynamic var waterResourceDevBlurb = ""
}
