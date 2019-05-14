//
//  FoodtTrackerTests.swift
//  FoodtTrackerTests
//
//  Created by Oleksandr Gribov on 4/1/19.
//  Copyright © 2019 Oleksandr Gribov. All rights reserved.
//

import XCTest
@testable import FoodtTracker

class FoodtTrackerTests: XCTestCase {
    // MARK: - Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal objects when passed valid parameters.
    func testMealInitilization() {
        
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest possible rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRating = Meal.init(name: "Negative", photo: nil, rating: -3)
        XCTAssertNil(negativeRating)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 7)
        XCTAssertNil(largeRatingMeal)
        
        // Empty string
        let emptyString = Meal.init(name: "", photo: nil, rating: 1)
        XCTAssertNil(emptyString)
    }

}
