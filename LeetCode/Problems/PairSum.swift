//
//  PairSum.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-04-06.
//

/*
 https://www.codingninjas.com/codestudio/problems/pair-sum_697295?source=youtube&campaign=love_babbar_codestudio1&utm_source=youtube&utm_medium=affiliate&utm_campaign=love_babbar_codestudio1
 */


import UIKit

private class Solution {
    func pairSum() {
        // sum = 5
        let arr = [1, 2, 3, 4, 5]
        var start = 0
        var end = arr.count - 1
        var result = [[Int]]()

        while start < end {
            if arr[start] + arr[end] == 5 {
                result.append([arr[start], arr[end]])
                start += 1
                end -= 1
            } else if arr[start] + arr[end] > 5 {
                end -= 1
            } else {
                start += 1
            }
        }
        print(result)
    }
}

extension UIViewController {
    func pairSum() {
        let a = Solution()
        a.pairSum()
    }
}

