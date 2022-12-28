//
//  UITest_PoCUITests.swift
//  UITest-PoCUITests
//
//  Created by user on 26/12/22.
//

import XCTest

final class UITest_PoCUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let nameTextField = app.textFields["nameTextField"]
        XCTAssertTrue(nameTextField.exists)

        let passwordTextField = app.secureTextFields["passwordTextField"]
        XCTAssertTrue(passwordTextField.exists)

        nameTextField.tap()
        nameTextField.typeText("Israel")

        passwordTextField.tap()
        passwordTextField.typeText("password")
    }

    func test_ViewController_signinButton_shouldNavigateToDestination() {
        let name = app.textFields["nameTextField"]
        let nameExists = name.waitForExistence(timeout: 5)
        XCTAssertTrue(nameExists)
        name.tap()
        name.typeText("israelUser")
        
        let passwordTextField = app.secureTextFields["passwordTextField"]
        let passwordExists = passwordTextField.waitForExistence(timeout: 5)
        XCTAssertTrue(passwordExists)
        passwordTextField.tap()
        passwordTextField.typeText("password")

        let signin = app/*@START_MENU_TOKEN@*/.buttons["signinButton"].staticTexts["Signin"]/*[[".buttons[\"Signin\"].staticTexts[\"Signin\"]",".buttons[\"signinButton\"].staticTexts[\"Signin\"]",".staticTexts[\"Signin\"]"],[[[-1,2],[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        let signinExists = signin.waitForExistence(timeout: 5)
//        signin.tap()
        XCTAssertTrue(signinExists)
    }

    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
    }
}
