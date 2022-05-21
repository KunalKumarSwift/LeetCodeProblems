//
//  ReverseInteger.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-02-23.
//
// https://leetcode.com/problems/reverse-integer/

import UIKit

private class Solution {
    func reverse(_ x: Int) -> Int {
        let lowerRange: Int32 = Int32.min
        let upperRange: Int32 = Int32.max
        if x < lowerRange || x > upperRange { return 0 }
        var sample = x
        var reversed: Int = 0
        while sample != 0 {
            if reversed > upperRange / 10 {
                return 0
            }
            if reversed < lowerRange / 10 {
                return 0
            }
            let lastDigit = sample % 10
            reversed = reversed * 10 + lastDigit
            sample = sample / 10
        }
        if reversed < lowerRange || reversed > upperRange { return 0 }
        return reversed
    }
}

extension UIViewController {
    func displayReverseInteger() {
        let a = Solution()
        print(a.reverse(-2147483648))
    }
}
