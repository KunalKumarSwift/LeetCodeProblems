//
//  RemoveDuplicates.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-25.
//

/*
 https://leetcode.com/problems/remove-duplicates-from-sorted-array/
 */
import UIKit

private class Solution {
    func removeDuplicates(nums: inout [Int]) -> Int {

        let nums2 = nums

        var start = 0
        var end = start + 1

        var removedIndexes = 0
        while end < nums2.count {
            if nums2[start] == nums2[end] {
                nums.remove(at: end - removedIndexes)
                start = end
                end += 1
                removedIndexes += 1
            } else {
                start += 1
                end += 1
            }
        }

        return nums.count
    }
}

extension UIViewController {
    func removeDuplicates() {
        let a = Solution()
        var arr = [0,0,1,1,1,2,2,3,3,4]
        print(a.removeDuplicates(nums: &arr))
        print(arr)
    }
}

