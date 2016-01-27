//
//  PokerUITests.swift
//  PokerUITests
//
//  Created by Alejandro Rodriguez on 1/26/16.
//  Copyright © 2016 BHouse. All rights reserved.
//

import XCTest

class PokerUITests: XCTestCase {
    
    var app:XCUIApplication?
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        
        app = XCUIApplication()
        setupSnapshot(app!)
        app!.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
    }
    
    func testExample() {
        
       
        guard app != nil else{
            return XCTFail()
        }

        app!.buttons["WHAT SHOULD I DO?"].tap()
        snapshot("01LoginScreen")
        app!.alerts["Action Required"].collectionViews.buttons["Ok"].tap()
        snapshot("02LoginScreen")
        app!.buttons["Button"].tap()
        snapshot("03LoginScreen")
        
    }
    
}
