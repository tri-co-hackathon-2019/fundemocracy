//
//  Contribution.swift
//  fundemocracy
//
//  Created by Cassandra Stone on 2/8/19.
//  Copyright © 2019 Cassandra Stone. All rights reserved.
//

import Foundation
import RealmSwift

class Contribution: Object {
    // total amount donated
    @objc dynamic var contributionAmount = 0
    // date donated
    @objc dynamic var date = Date()
    // candidate
    @objc dynamic var candidate: Candidate? = nil
    @objc dynamic var donor: Donor? = nil
}
