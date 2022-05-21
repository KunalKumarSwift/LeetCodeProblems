//
//  ContainerWithMostWater.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-04-01.
//

/*
 https://leetcode.com/problems/container-with-most-water/
 */

import UIKit

private class Solution {
    func containerWithMostWater() {
        let array = [1,2,3,4,5,25,24,3,4]
        var i = 0
        var j = array.count - 1
        var area = 0
        while(i<j) {
            let areaInCurrentContext = calculateArea(i: i, j: j, array: array)

            if areaInCurrentContext > area {
                area = areaInCurrentContext
            }
            if array[i] > array[j] {
                j-=1
            } else {
                i+=1
            }
        }
        print(area)
    }

    func calculateArea(i: Int, j: Int, array: [Int]) -> Int {
        let distance = (j - i)
        let areaInCurrentContext = distance * min(array[i], array[j])
        return areaInCurrentContext
    }
}

extension UIViewController {
    func containerWithMostWater() {
        let a = Solution()
        a.containerWithMostWater()
    }
}

