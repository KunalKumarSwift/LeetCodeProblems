//
//  TrappingRainWater.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-04-30.
//
/*
 https://leetcode.com/problems/trapping-rain-water/
 */
import UIKit

private class Solution {
    func trappingRainWater() {
        let height = [4,2,0,3,2,5]//[0,1,0,2,1,0,1,3,2,1,2,1]

        var start = 0
        var end = height.count - 1

        var waterCount = 0
        var leftMax = 0
        var rightMax = 0

        while start < end {

            if height[start] <= height[end] {
                let current = start + 1
                if height[start] > leftMax {
                    leftMax = height[start]
                }

                let difference = leftMax - height[current]
                if difference > 0 {
                    waterCount += difference
                }
                start = current
            } else {
                let current = end - 1

                if height[end] > rightMax {
                    rightMax = height[end]
                }

                let difference = rightMax - height[current]

                if difference > 0 {
                    waterCount += difference
                }
                end = current
            }
        }
        print(waterCount)
    }

    func nextPermutation(_ nums: inout [Int]) {
        let x = nums.sorted()
        if x == nums {
            let t = nums[1]
            let u = nums[2]

            nums[1] = u
            nums[2] = t

        } else {
            print("c")
        }
    }
}

extension UIViewController {
    func trappingRainWater() {
        let a = Solution()
        a.trappingRainWater()
        var a1 = [3,2,1]
        a.nextPermutation(&a1)
        print(a1)
    }
}

