//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Ibrahim on 1/3/20.
//  Copyright © 2020 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {

    var entryUnderTest: Entry!

    override func setUp() {
        entryUnderTest = Entry("Title", "Content")

    }

    override func tearDown() {
        entryUnderTest = nil
    }

     func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(entry?.title, "Title", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            print ("ADASDASD")
        }
    }

}
