//
//  LongestSubstring.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2023-06-08.
//

import Foundation
// https://leetcode.com/problems/longest-substring-without-repeating-characters/


import UIKit

private class Solution {
    let s = "anvibjnaetyqwl"

    func longestSubString() -> Int {
        let s = "abba"
        // Maintaining sliding window
        var window: [Character] = [Character]()

        // Maintaining indexes for various characters
        // If in a loop we get an index in the dictionary we remove 0 -
        var dict: [Character: [Int]] = [Character: [Int]]()

        var maxLength = 0
        var result: [Character] = [Character]()

        // Maintain a deletion factor so we keep updating the indexes to remove from window - All the indexes are in the form of original string array indexes and we need this factor to update
        var deletionFactor = 0
        for (currentIndex, char) in s.enumerated() {
            //endIndex = currentIndex
            if var dictIndexArray = dict[char], !dictIndexArray.isEmpty {
                // Updated StartIndex
                //startIndex = dictIndexArray[0] + 1

                let deletionRange = (dictIndexArray[0] + 1) - deletionFactor

                // Remove elements from dict
                for i in 0..<deletionRange {
                    let element = window[i]
                    dict[element] = nil
                }
                // Updated dictionary
                dict[char] = [currentIndex]

                // Remove the elements from window
                window.removeFirst((dictIndexArray[0] + 1) - deletionFactor)
                deletionFactor = dictIndexArray[0] + 1
                window.append(char)

            } else {
                dict[char] = [currentIndex]
                window.append(char)
            }

            if maxLength < window.count {
                maxLength = window.count
                result = window
            }
        }
        return result.count
    }
}

extension UIViewController {
    func LongestSubstring() {
        let a = Solution()
        a.longestSubString()
    }
}

