//
//  MedianOfTwoSortedArrays.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-21.
//

/*
 https://leetcode.com/problems/median-of-two-sorted-arrays/
 */

/// Another approach is written in merge sort which does the same thing.

import UIKit

private class Solution {
    func MedianOfTwoSortedArrays() {
        var nums1: [Int] = [2,3,4,5]
        var nums2: [Int] = [1,9,10]

        mergeArrays(firstArray: nums1, secondArray: nums2)
    }

    func mergeArrays(firstArray: [Int], secondArray: [Int]) -> Double {
        let m = firstArray.count
        let n = secondArray.count
        let total = m + n

        var i = 0
        var j = 0

        var current: Int = 0
        var previous: Int = 0

        for _ in 0...(total / 2) {
            previous = current

            if i < m && (j >= n || firstArray[i] < secondArray[j]) {
                current = firstArray[i]
                i += 1
            } else {
                current = secondArray[j]
                j += 1
            }
        }

        if total % 2 == 0 {
            return Double(previous + current) / 2.0
        } else {
            return Double(current)
        }
    }
}

extension UIViewController {
    func MedianOfTwoSortedArrays() {
        let a = Solution()
        a.MedianOfTwoSortedArrays()
    }
}

