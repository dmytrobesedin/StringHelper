import XCTest
@testable import StringHelper

final class StringHelperTests: XCTestCase {
    var tug: StringHelper!
    
    override func setUp() {
        super.setUp()
        tug = StringHelper()
    }
    
    override func tearDown() {
        tug = nil
        super.tearDown()
    }
    
    func test_Palindrome() {
        XCTAssertTrue(tug.isPalindrome("level"))
    }

    func test_isNotPalindrome() {
        XCTAssertFalse(tug.isPalindrome("Swift"))
    }
    
    func test_VowelCount_isTwo() {
        XCTAssertEqual(tug.countVowels("hello"), 2)
    }
    
    func test_VowelCount_isNotThree() {
        XCTAssertFalse(tug.countVowels("Bye") == 3)
    }
}
