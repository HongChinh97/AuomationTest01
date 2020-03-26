//
//  LoadDataFromPlistUITests.swift
//  LoadDataFromPlistUITests
//
//  Created by Hong Chinh on 2/5/20.
//  Copyright © 2020 Vu. All rights reserved.
//

import XCTest

class LoadDataFromPlistUITests: XCTestCase {
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

    func testExample() {
        app.buttons["done"].tap()
        //test dòng đầu tiên trong table có tồn tại hay không
        //        if !app.cells.firstMatch.waitForExistence(timeout: 5) {
        //            XCTFail("Tables does not exist")
        //
        //        }
        //test dòng cuối cùng trong table có tồn tại hay không
        if !app.cells.element(boundBy: app.cells.count - 1).waitForExistence(timeout: 3){
            XCTFail("Table does not exist final cell")
        }
        XCTAssertFalse(app.isAccessibilityElement)
    }

}
