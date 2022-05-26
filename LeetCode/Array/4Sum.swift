//
//  4Sum.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-25.
//

import Foundation

import UIKit

private class Solution {
    func fourSum() {
        let nums = [1,0,-1,0,-2,2]
        let target = 0

        let nums2 = nums.sorted()
        var result: [[Int]] = [[Int]]()

        for i in 0..<nums2.count {
            let k = i+1

            for j in k..<nums2.count {

                let pair = findPairForItem(iIndex: i, jIndex: j, target: target, array: nums2)
                if !pair.isEmpty {
                    pair.forEach {
                        if !result.contains($0) {
                            result.append($0)
                        }
                    }
                }
            }
        }
        print(result)
    }

    func findPairForItem(iIndex: Int, jIndex: Int, target: Int, array: [Int]) -> [[Int]] {
        var result: [[Int]] = [[Int]]()
        var start = jIndex + 1
        var end = array.count - 1
        let iElement = array[iIndex]
        let jElement = array[jIndex]

        while start < end {
            if array[start] + array[end] + iElement + jElement == target {
                var tempResult: [Int] = [Int]()
                tempResult.append(iElement)
                tempResult.append(jElement)
                tempResult.append(array[start])
                tempResult.append(array[end])
                result.append(tempResult)
                end = end - 1
            } else if array[start] + array[end] + iElement + jElement < target {
                start += 1
            } else {
                end = end - 1
            }
        }
        return result
    }
}

extension UIViewController {
    func fourSum() {
        let a = Solution()
        a.fourSum()
    }
}

