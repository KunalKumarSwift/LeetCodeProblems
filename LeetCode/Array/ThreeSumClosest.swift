//
//  ThreeSumClosest.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-25.
//

import Foundation

import UIKit

private class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums2 = nums.sorted()
        var sum = 0
        if nums.count == 3 {
            return nums.reduce(0, +)
        }

        sum = [nums2[0], nums2[1], nums2[2]].reduce(0, +)
        var diff = abs(sum - target)

        for i in 0..<nums2.count - 1 {
            findPairClosestToTarget(currentIndex: i, array: nums2, target: target, sum: &sum, diff: &diff)
        }

        return sum
    }

    func findPairClosestToTarget(currentIndex: Int, array: [Int], target: Int, sum: inout Int, diff: inout Int) {

        var start = currentIndex + 1
        var end = array.count - 1

        let currentElement = array[currentIndex]


        print("currentElement == \(currentElement)")

        while start < end {
            let pair = array[start] + array[end] + currentElement
            print("array[start] == \(array[start])")
            print("array[end] == \(array[end])")
            print("pair == \(pair)")
            if pair == target {
                sum = target
                diff = abs(pair - target)
                break
            } else if pair > target {
                end = end - 1
            } else {
                start = start + 1
            }

            print("abs(pair - target) == \(abs(pair - target))")
            print("abs(sum) == \(abs(sum))")
            if abs(pair - target) < abs(diff) {
                print("setting (sum) == \(pair)")
                sum = pair
                diff = abs(pair - target)
            }


            print("\n")
        }
    }
}

extension UIViewController {
    func threeSumClosest() {
        let a = Solution()
        let sum = a.threeSumClosest([1,1,48,50,99,100,103,333,333], 250)
        print(sum)
    }
}

