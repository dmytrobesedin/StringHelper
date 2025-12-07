// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct StringHelper {

    ///  Check if a string is a palindrome
    /// - Parameter input: The string to check
    /// - Returns: True if the string is a palindrome, false otherwise
    public static func isPalindrome(_ input: String) -> Bool {
        guard !input.isEmpty else { return false }
        let cleaned = input.lowercased().filter { $0.isLetter || $0.isNumber }
        return cleaned == String(cleaned.reversed())
    }
    
    /// Count the number of vowels in a string
    /// - Parameter input: The string to check
    /// - Returns: The number of vowels in the string
    public static func countVowels(_ input: String) -> Int {
        guard !input.isEmpty else { return 0 }
        let vowels = "aeiou"
        return input.lowercased().filter { vowels.contains($0) }.count
    }
}
