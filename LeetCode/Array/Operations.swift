//
//  Operations.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-21.
//

/*
 https://leetcode.com/problems/final-value-of-variable-after-performing-operations/
 */

import UIKit

private class Solution {
    func Operations() {
        let operations = ["--X","X++","X++"]//["++X","++X","X++"]
        var x = 0
        for op in operations {
            performOperation(op: op, num: &x)
        }
        print(x)
    }

    func performOperation(op: String, num: inout Int) {
        switch op {
        case "++X", "X++":
            num = num + 1
        case "--X", "X--":
            num = num - 1
        default:
            return
        }
    }
}

extension UIViewController {
    func Operations() {
        let a = Solution()
        a.Operations()
    }
}

