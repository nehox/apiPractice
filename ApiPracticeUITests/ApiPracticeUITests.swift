//
//  ApiPracticeUITests.swift
//  ApiPracticeUITests
//
//  Created by jficerai on 23/02/2021.
//

import XCTest

class ApiPracticeUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        app/*@START_MENU_TOKEN@*/.staticTexts["BIere List"]/*[[".buttons[\"BIere List\"].staticTexts[\"BIere List\"]",".staticTexts[\"BIere List\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Trashy Blonde"]/*[[".cells.staticTexts[\"Trashy Blonde\"]",".staticTexts[\"Trashy Blonde\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let webViewsQuery = app.webViews.webViews.webViews
        webViewsQuery.otherElements["2.png 272×1,058 pixels"].children(matching: .image).element.swipeUp()
        app.navigationBars["Trashy Blonde"].buttons["Beer List"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Bramling X"]/*[[".cells.staticTexts[\"Bramling X\"]",".staticTexts[\"Bramling X\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery.otherElements["10.png 271×1,063 pixels"].children(matching: .image).element.swipeUp()
        app.navigationBars["Bramling X"].buttons["Beer List"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Alpha Dog"]/*[[".cells.staticTexts[\"Alpha Dog\"]",".staticTexts[\"Alpha Dog\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery.otherElements["14.png 272×1,058 pixels"].children(matching: .image).element.swipeUp()
        app.navigationBars["Alpha Dog"].buttons["Beer List"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
