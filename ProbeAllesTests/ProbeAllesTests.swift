//
//  ProbeAllesTests.swift
//  ProbeAllesTests
//
//  Created by Gene Dimitrow on 12.06.21.
//

import XCTest
@testable import ProbeAlles

class ProbeAllesTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {
        
        let manager = ProductListManager.emptyState()
        
        XCTAssertTrue(manager.products.count == 0, "should start with empty list")
        
        manager.addNewProduct()
        
        XCTAssertTrue(manager.products.count == 1, "should have one product")
    }
}
