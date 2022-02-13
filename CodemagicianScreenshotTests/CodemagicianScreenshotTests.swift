//
//  CodemagicianScreenshotTests.swift
//  CodemagicianScreenshotTests
//
//  Created by Rudrank Riyam on 13/02/22.
//

import XCTest

class CodemagicianScreenshotTests: XCTestCase {

  override func setUpWithError() throws {
    continueAfterFailure = false

    let app = XCUIApplication()
    setupSnapshot(app)
    app.launch()
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testExample() throws {
    // UI tests must launch the application that they test.
    let app = XCUIApplication()
    app.launch()

    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }

  func testTakeScreenshots() {
    snapshot("01-HomeScreen", waitForLoadingIndicator: true)
  }

  func testLaunchPerformance() throws {
    if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
      // This measures how long it takes to launch your application.
      measure(metrics: [XCTApplicationLaunchMetric()]) {
        XCUIApplication().launch()
      }
    }
  }
}
