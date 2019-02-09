//
//  RealmHelper.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/8/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//
import Foundation
import Realm
import RealmSwift

class RealmHelper {
    
    static func addDonor(_ donor: Donor) {
        let realm = try! Realm()
        try! realm.write() {
            realm.add(donor)
        }
    }
    /**
    static func deleteDonor(_ donor: Donor) {
        let realm = try! Realm()
        try! realm.write() {
            realm.delete(donor)
        }
    } ***/
    
    static func retrieveDonor(_ donorEmail: String) -> Donor {
        let realm = try! Realm()
        let donorList = realm.objects(Donor.self)
        for don in donorList {
            if (don.email == donorEmail) {
                return don
            }
        }
        return realm.objects(Donor.self).first!
    }
    
    static func retrieveDonorWithFirstName(_ firstName: String) -> Donor {
        let realm = try! Realm()
        let donorList = realm.objects(Donor.self)
        for don in donorList {
            if (don.firstName == firstName) {
                return don
            }
        }
        try! realm.write {
            realm.add(Donor())
        }
        return realm.objects(Donor.self).first!
    }
    
    static func setPolIndex(_ donor: Donor, pol: String, ind: Int ) {
        let realm = try! Realm()
        let currDonor = RealmHelper.retrieveDonorWithFirstName("Cassandra")
        if (pol == "agricultureandFood") {
            try! realm.write {
                currDonor.agricultureandFood = ind
            }
        } else if (pol == "animals") {
            try! realm.write {
                currDonor.animals = ind
            }
        } else if (pol == "armedForcesandNationalSecurity") {
            try! realm.write {
                currDonor.armedForcesandNationalSecurity = ind
            }
        } else if (pol == "artsCultureReligion") {
            try! realm.write {
                currDonor.artsCultureReligion = ind
            }
        } else if (pol == "civilRightsandLibertiesMinorityIssues") {
            try! realm.write {
                currDonor.civilRightsandLibertiesMinorityIssues = ind
            }
        } else if (pol == "commerce") {
            try! realm.write {
                currDonor.commerce = ind
            }
        } else if (pol == "congress") {
            try! realm.write {
                currDonor.congress = ind
            }
        } else if (pol == "crimeandLawEnforcement") {
            try! realm.write {
                currDonor.crimeandLawEnforcement = ind
            }
        } else if (pol == "economicsAndPublicFinance") {
            try! realm.write {
                currDonor.economicsAndPublicFinance = ind
            }
        } else if (pol == "education") {
            try! realm.write {
                currDonor.education = ind
            }
        } else if (pol == "emergencyManagement") {
            try! realm.write {
                currDonor.emergencyManagement = ind
            }
        } else if (pol == "energy") {
            try! realm.write {
                currDonor.energy = ind
            }
        } else if (pol == "environmentalProtection") {
            try! realm.write {
                currDonor.environmentalProtection = ind
            }
        } else if (pol == "families") {
            try! realm.write {
                currDonor.families = ind
            }
        } else if (pol == "finance") {
            try! realm.write {
                currDonor.finance = ind
            }
        } else if (pol == "foreignTrade") {
            try! realm.write {
                currDonor.foreignTrade = ind
            }
        } else if (pol == "governmentOperations") {
            try! realm.write {
                currDonor.governmentOperations = ind
            }
        } else if (pol == "health") {
            try! realm.write {
                currDonor.health = ind
            }
        } else if (pol == "housingandCommDevelopment") {
            try! realm.write {
                currDonor.housingandCommDevelopment = ind
            }
        } else if (pol == "immigration") {
            try! realm.write {
                currDonor.immigration = ind
            }
        } else if (pol == "internationalAffairs") {
            try! realm.write {
                currDonor.internationalAffairs = ind
            }
        } else if (pol == "laborandEmployment") {
            try! realm.write {
                currDonor.laborandEmployment = ind
            }
        } else if (pol == "law") {
            try! realm.write {
                currDonor.law = ind
            }
        } else if (pol == "nativeAmericans") {
            try! realm.write {
                currDonor.nativeAmericans = ind
            }
        } else if (pol == "publicLands") {
            try! realm.write {
                currDonor.publicLands = ind
            }
        } else if (pol == "stem") {
            try! realm.write {
                currDonor.stem = ind
            }
        } else if (pol == "socialSciences") {
            try! realm.write {
                currDonor.socialSciences = ind
            }
        } else if (pol == "socialWelfare") {
            try! realm.write {
                currDonor.socialWelfare = ind
            }
        } else if (pol == "sportsandRec") {
            try! realm.write {
                currDonor.sportsandRec = ind
            }
        } else if (pol == "taxation") {
            try! realm.write {
                currDonor.taxation = ind
            }
        } else if (pol == "transportation") {
            try! realm.write {
                currDonor.transportation = ind
            }
        } else if (pol == "waterResourceDev") {
            try! realm.write {
                currDonor.waterResourceDev = ind
            }
        } else {
            print("not pol property")
        }

    }
}
