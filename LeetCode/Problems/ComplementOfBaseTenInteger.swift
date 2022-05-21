//
//  ComplementOfBaseTenInteger.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-02-23.
//
// https://leetcode.com/problems/complement-of-base-10-integer/
import Foundation
import UIKit

private class Solution {
    func bitwiseComplement(_ n: Int) -> Int {
        if n == 0 { return 1 }
        var number = n
        var mask = 0

        while number != 0 {
            mask = mask << 1
            mask = mask | 1
            number = number >> 1
        }

        return ~n & mask
    }
}

extension UIViewController {
    func displayBitwiseComplement() {
        let a = Solution()
        print(a.bitwiseComplement(5))
    }
}
