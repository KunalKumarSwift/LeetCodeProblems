//
//  greatestWealth.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-21.
//

/*
 https://leetcode.com/problems/richest-customer-wealth/
 */
import UIKit

private class Solution {
    func calculateSum(array: [Int]) -> Int {
        return array.reduce(0, +)
    }

    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var greatestWealth = 0
        for arr in accounts {
            let sum = calculateSum(array: arr)
            if sum >= greatestWealth {
                greatestWealth = sum
            }
        }
        return greatestWealth
    }
}

extension UIViewController {
    func maximumWealth() {
        let a = Solution()
        print(a.maximumWealth([[1,2,3], [4,5,6]]))
    }
}

