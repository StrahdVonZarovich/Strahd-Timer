//
//  Strahd_TimerTests.swift
//  Strahd-TimerTests
//
//  Created by Fatih Canbekli on 14.06.2019.
//  Copyright © 2019 Fatih Canbekli. All rights reserved.
//

import XCTest
@testable import Strahd_Timer

class Strahd_TimerTests: XCTestCase {


    override func setUp() {
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUpdateSecond() {
        var time = Time()
        var inputTime: String = "12:44"
        var expectOutputTime: String = "12:43"
        
        var outputTime: String = time.updateSecond(time: inputTime)
        print(outputTime)
        XCTAssertTrue(outputTime == expectOutputTime)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testUpdateMinute(){
        var time = Time()
        var inputTime: String = "30:00"
        var expectOutputTime: String = "29:59"
        
        var outputTime: String = time.updateMinute(time: inputTime)
        print(outputTime)
        XCTAssertTrue(outputTime == expectOutputTime)
    }

    func testUpdateTime(){
        var time = Time()
        var inputTimes = ["12:59","14:00","02:33"]
        var expectOutputTimes = ["12:58","13:59","02:32"]
        inputTimes[0] = time.updateTime(time: inputTimes[0])
        inputTimes[1] = time.updateTime(time: inputTimes[1])
        inputTimes[2] = time.updateTime(time: inputTimes[2])
        XCTAssertTrue(inputTimes == expectOutputTimes)
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
