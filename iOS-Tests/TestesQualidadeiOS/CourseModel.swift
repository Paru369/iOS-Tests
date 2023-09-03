//
//  CourseModel.swift
//  TestesQualidadeiOS
//
//  Created by Paulo Pinheiro on 9/3/23.
//

import Foundation

class CourseModel {
    var course: String!
    var duration: String!
    var contact: String!
    
    init() {
        self.course = "Swift"
        self.duration = "\(getDuration()) hora(s)"
        self.contact = "swift@curso.com"
    }
    
    func getDuration() -> Int {
        if course == "Swift" {
            return 6
        } else if course == "SwiftUI + Combine" {
            return 8
        }
        return 0
    }
}
