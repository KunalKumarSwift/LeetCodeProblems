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

        print(findMedianSortedArrays(nums1, nums2))
    }


    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let m = nums1.count
        let n = nums2.count
        let totalLength = m + n

        var startIndex: Int
        var endIndex: Int

        if totalLength % 2 == 0 {
            startIndex = (totalLength / 2) - 1
            endIndex = (totalLength / 2)
        } else {
            startIndex = totalLength / 2
            endIndex = totalLength / 2
        }

        var i = 0
        var j = 0
        var result: [Int] = []

        while i + j <= endIndex {
            let value1 = i < m ? nums1[i] : Int.max
            let value2 = j < n ? nums2[j] : Int.max

            if value1 <= value2 {
                result.append(value1)
                i += 1
            } else {
                result.append(value2)
                j += 1
            }
        }

        let median: Double

        if totalLength % 2 == 0 {
            median = (Double(result[startIndex]) + Double(result[endIndex])) / 2.0
        } else {
            median = Double(result[endIndex])
        }

        return median
    }
}

extension UIViewController {
    func MedianOfTwoSortedArrays() {
        let a = Solution()
        a.MedianOfTwoSortedArrays()
    }
}

