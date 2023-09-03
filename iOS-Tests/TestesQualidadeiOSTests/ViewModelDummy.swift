//
//  ViewModelDummy.swift
//  TestesQualidadeiOS
//
//  Created by Paulo Pinheiro on 9/3/23.
//

@testable import TestesQualidadeiOS

class ViewModelDummy: ViewModelProtocol {
    
    var status: String = ""
    var hasCourse = false
    
    func changeCourse() {
        hasCourse = true
    }
    
    func getDefaultCourse(completion: @escaping (TestesQualidadeiOS.CourseModel) -> (), fail: () -> ()) {
        completion(CourseModel())
    }
    
    func changeHasCourseStatus() { }
    
    func getHasCourseStatus(completion: @escaping (Bool) -> ()) { }
    
    func getCategorie() { }
}
