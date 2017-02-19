//
//  PercentageCalculatorTests.swift
//  PercentageCalculatorTests
//
//  Created by Maxime Defauw on 03/02/16.
//  Copyright © 2016 App Coda. All rights reserved.
//

import XCTest
@testable import PercentageCalculator

class PercentageCalculatorTests: XCTestCase {
    //add an instance of the viewcontroller class
    var vc: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateInitialViewController() as! ViewController
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPercentageCalculator() {
        //to see if the percentage method from the viewcontroller works or not
        let p = vc.percentage(50, 50)
        XCTAssert(p == 25)
    

    }
    //to verify if labels display the right text
    func testLabelValuesShowedProperly() {
        let _ = vc.view
        vc.updateLabels(Float(80.0), Float(50.0), Float(40.0))
        
        XCTAssert(vc.numberLabel.text == "80.0", "numberLabel doesnt show the right text")
        XCTAssert(vc.percentageLabel.text == "50.0%", "percentageLabel doesnt show the right text")
        XCTAssert(vc.resultLabel.text == "40.0", "resultLabel doesnt show the right text")
    }
}
