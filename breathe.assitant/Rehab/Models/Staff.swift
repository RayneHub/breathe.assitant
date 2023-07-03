//
//  Staff.swift
//  Rayne Health
//
//  Created by Christopher Raven on 18/06/2023.
//


struct Staff: Hashable {
    var lead:StaffMember
    var assistant:StaffMember
    var volunteers:[StaffMember]
}
