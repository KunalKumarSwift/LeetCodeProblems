//
//  PowerOfTwo.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-02-24.
//
// https://leetcode.com/problems/power-of-two/
import UIKit

private class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var num = n
        while num != 0 {
            if num >> 1 == 0 {
                return (num & 1 == 1)
            } else if num & 1 == 1 {
                return false
            }
            num = num >> 1
        }
        return false
    }
}

extension UIViewController {
    func displayisPowerOfTwo() {
        let a = Solution()
        print(a.isPowerOfTwo(1))
    }
}
