//
//  UITest_PoCTests.swift
//  UITest-PoCTests
//
//  Created by user on 26/12/22.
//

import XCTest
@testable import UITest_PoC

final class UITest_PoCTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let vc = ViewController()
        let expectedResult = vc.sumNumbers(a: 1, b: 2)
        XCTAssertEqual(expectedResult, 3)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
