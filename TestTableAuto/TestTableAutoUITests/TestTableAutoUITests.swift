//
//  TestTableAutoUITests.swift
//  TestTableAutoUITests
//
//  Created by Hong Chinh on 2/4/20.
//  Copyright © 2020 Hong Chinh. All rights reserved.
//

import XCTest

class TestTableAutoUITests: XCTestCase {
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

    func testTextCell(){
        let randomIndex = Int.random(in: 0..<app.cells.count)
        let cell = app.cells.element(boundBy: randomIndex)
        
        let label = cell.staticTexts.firstMatch.label
        
        cell.tap()
        
        XCTAssertEqual("\(label)", app.staticTexts["lblResult"].label)
        app.otherElements.descendants(matching: .activityIndicator)
//        XCUIElementQuery.children(self)
    }

}
