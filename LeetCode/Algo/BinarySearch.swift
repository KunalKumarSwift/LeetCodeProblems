//
//  BinarySearch.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-04-10.
//

/*
 https://www.geeksforgeeks.org/binary-search/
 Binary Search is a searching algorithm used in a sorted array by repeatedly dividing the search interval in half. The idea of binary search is to use the information that the array is sorted and reduce the time complexity to O(Log n).

 Love Babbar:
 https://www.youtube.com/watch?v=YJeoQBevNVo

 mid = start + ((end - start) / 2)

 Big O = O(Log(n))
 */
import UIKit

private class Solution {
    func binarySearch(nums: [Int], element: Int) -> Int {

        var end = nums.count - 1
        var start = 0
        var mid = start + ((end - start) / 2)
        while (start <= end) {

            if nums[mid] == element {
                return mid
            }
            if element > nums[mid] {
                start = (mid + 1)

            }
            if  element < nums[mid]  {
                end = (mid - 1)
            }
            mid = start + ((end - start) / 2)
        }
        return -1

    }
}

extension UIViewController {
    func binarySearch() {
        let a = Solution()
        let e = a.binarySearch(nums: [0, 2,4,6,8,10,12,14,16], element: 12)
        print(e)
    }
}

