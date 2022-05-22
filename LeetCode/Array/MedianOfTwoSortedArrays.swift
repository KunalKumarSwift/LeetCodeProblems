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
        var nums1 = firstArray
        var nums2 = secondArray

        let m = nums1.count
        let n = nums2.count

        var result: [Int] = [Int]()

        var median: Double = 0.0

        while result.count < m+n {
            if let firstElementInNums1 = nums1.first, let firstElementInNums2 = nums2.first {
                if firstElementInNums1 > firstElementInNums2 {
                    result.append(firstElementInNums2)
                    nums2.removeFirst()
                } else {
                    result.append(firstElementInNums1)
                    nums1.removeFirst()
                }
            } else if let firstElementInNums2 = nums2.first, nums1.isEmpty {
                result.append(firstElementInNums2)
                nums2.removeFirst()
            } else if let firstElementInNums1 = nums1.first, nums2.isEmpty {
                result.append(firstElementInNums1)
                nums1.removeFirst()
            }
        }

        let lengthOfResult = result.count

        if lengthOfResult == 0 {
            median = 0.0
        }
        else if lengthOfResult == 1 {
            median = Double(result.first!)
        } else {
            let middleIndex = (lengthOfResult / 2)
            if lengthOfResult % 2 == 0 {
                median = (Double(result[middleIndex - 1]) + Double(result[middleIndex])) / 2.0
            } else {
                median = Double(result[middleIndex])
            }

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

