//
//  3Sum.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-22.
//

/*
 https://leetcode.com/problems/3sum/


 */
import UIKit

private class Solution {
    func threeSum() {
        let nums = [-1,0,1,2,-1,-4,-2,-3,3,0,4].sorted()

        var result: [[Int]] = [[Int]]()

        for i in 0..<nums.count {
            let pair = findPairForItem(currentIndex: i, array: nums)
            if !pair.isEmpty {
                pair.forEach {
                    if !result.contains($0) {
                        result.append($0)
                    }
                }
            }
        }
        print(Set(arrayLiteral: result))
    }

    func findPairForItem(currentIndex: Int, array: [Int]) -> [[Int]] {

        var result: [[Int]] = [[Int]]()
        var start = currentIndex + 1
        var end = array.count - 1
        let currentElement = array[currentIndex]

        while start < end {
            if array[start] + array[end] == -currentElement {
                var tempResult: [Int] = [Int]()
                tempResult.append(currentElement)
                tempResult.append(array[start])
                tempResult.append(array[end])
                result.append(tempResult)
                end = end - 1

            } else if array[start] + array[end] < -currentElement {
                start += 1
            } else {
                end = end - 1
            }
        }

        return result

    }
}

extension UIViewController {
    func threeSum() {
        let a = Solution()
        a.threeSum()
    }
}

