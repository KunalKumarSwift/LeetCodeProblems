//
//  PowerOfThree.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-02-24.
//

import UIKit

private class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        var num = 1
        if n == 1 { return true }
        while num < 20 {
            if log10(Double(abs(n))) == Double(num) * Double(log10(3.0)) {
                return true
            }
            num = num + 1
        }
        return false
    }
}

extension UIViewController {
    func displayisPowerOfThree() {
        let a = Solution()
        print(a.isPowerOfThree(-3))
        print(Int32.max)
        print(Int32.min)
        print(0xaaaaaaaa)
    }
}
