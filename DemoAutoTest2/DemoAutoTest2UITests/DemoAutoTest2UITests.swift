//
//  DemoAutoTest2UITests.swift
//  DemoAutoTest2UITests
//
//  Created by Hong Chinh on 2/3/20.
//  Copyright © 2020 Hong Chinh. All rights reserved.
//

import XCTest

class DemoAutoTest2UITests: XCTestCase {
    let app = XCUIApplication()

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

    func testTextFeild(){
        let tf1 = app.textFields["Number 1"]
        let tf2 = app.textFields["Number 2"]
        let num1 = Int.random(in: 1...10)
        let num2 = Int.random(in: 1...10)
        tf1.tap()
        tf1.typeText("\(num1)")
        tf2.tap()
        tf2.typeText("\(num2)")
        app.buttons["Done"].tap()
        XCTAssert(app.navigationBars["DetailViewController"].exists)
    }

}
