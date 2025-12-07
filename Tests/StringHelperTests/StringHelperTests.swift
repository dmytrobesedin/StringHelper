import XCTest
@testable import StringHelper

final class StringHelperTests: XCTestCase {

    func test_Palindrome() {
        XCTAssertTrue(StringHelper.isPalindrome("level"))
    }

    func test_isNotPalindrome() {
        XCTAssertFalse(StringHelper.isPalindrome("Swift"))
    }
    
    func test_VowelCount_isTwo() {
        XCTAssertEqual(StringHelper.countVowels("hello"), 2)
    }
    
    func test_VowelCount_isNotThree() {
        XCTAssertFalse(StringHelper.countVowels("Bye") == 3)
    }
}
