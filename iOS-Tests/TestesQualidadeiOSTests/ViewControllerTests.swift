//
//  ViewControllerTests.swift
//  TestesQualidadeiOS
//
//  Created by Paulo Pinheiro on 9/3/23.
//

import XCTest
@testable import TestesQualidadeiOS

final class ViewControllerTests: XCTestCase {
    
    var sut: ViewController?

    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "ViewController") as? ViewController
        sut?.viewModel = ViewModelDummy()
        sut?.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testChangeCourseAction() {
        let course = sut?.courseValueLabel.text
        XCTAssertEqual(course, "Swift")
        
        sut?.changeCourseAction(UIButton())
        XCTAssertNotEqual(course, sut?.courseValueLabel.text)
        
        sut?.changeCourseAction(UIButton())
        XCTAssertEqual(course, "Swift")
    }

}
