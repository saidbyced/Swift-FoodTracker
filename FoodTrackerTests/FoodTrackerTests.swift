//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Chris Eadie on 25/04/2020.
//  Copyright © 2020 Chris Eadie. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    //MARK: Meal Class Tests
    
    // Confirm that the meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let highestPositiveRatingMeal = Meal.init(name: "Highest positive", photo: nil, rating: 5)
        XCTAssertNotNil(highestPositiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty name
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyNameMeal)
        
        // Rating exceeds maximum
        let tooHighRating = Meal.init(name: "Too high", photo: nil, rating: 6)
        XCTAssertNil(tooHighRating)
    }
}
