//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by beshbashbosh on 30/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {

    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        XCTAssertNotNil(viewController.view, "ViewController not initialised for testing")
    }

    override func tearDown() {
    }

    func test_Move1_IncrementsGameScoreTo1() {
        let move = "1"
        
        viewController.play(move: move)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 1, "After playing '\(move)`, score should be 1, score is \(newScore)")
    }
}