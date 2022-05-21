//
//  UniqueOccurences.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-03-30.
//

/*
 https://leetcode.com/problems/unique-number-of-occurrences/
 */

import UIKit

private class Solution {
    func uniqueOccurences() {
        let array = [-3,0,1,-3,1,1,1,-3,10,0]
        var numDict: [Int: Int] = [Int: Int]()
        for n in array {
            if numDict.keys.contains(n) {
                numDict[n]! += 1
            } else {
                numDict[n] = 1
            }
        }
        let v = numDict.values
        print(v.count == Set(v).count)
    }
}

extension UIViewController {
    func uniqueOccurences() {
        let a = Solution()
        a.uniqueOccurences()
    }
}

