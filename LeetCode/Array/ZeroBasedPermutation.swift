//
//  ZeroBasedPermutation.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-21.
//

/*
 https://leetcode.com/problems/build-array-from-permutation/
 */

import UIKit

private class Solution {
    func ZeroBasedPermutation() {
        let arr = [5,0,1,2,3,4]
        let result = arr.map {
            return arr[$0]
        }
        print(result)
    }
}

extension UIViewController {
    func ZeroBasedPermutation() {
        let a = Solution()
        a.ZeroBasedPermutation()
    }
}

