//
//  DemoTestAutomationUITests.swift
//  DemoTestAutomationUITests
//
//  Created by Hong Chinh on 2/3/20.
//  Copyright © 2020 Hong Chinh. All rights reserved.
//

import XCTest

class DemoTestAutomationUITests: XCTestCase {
    var app = XCUIApplication()
    

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testInputTextFeild(){
        let textField = app.textFields["Number 1"]
        textField.tap()
        let tf2 = app.textFields["Number 2"]
        tf2.tap()
        let a = Int.random(in: 1...10)
        let b = Int.random(in: 1...10)
        textField.typeText("\(a)")
        tf2.typeText("\(b)")
        app.buttons["Result"].tap()
        XCTAssertEqual(Double(a + b),Double(app.staticTexts["resultLbl"].label))
    }
    

}
