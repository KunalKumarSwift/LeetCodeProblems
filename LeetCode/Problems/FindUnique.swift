//
//  FindUnique.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-03-30.
//
/*
 https://www.codingninjas.com/codestudio/problems/find-unique_625159?source=youtube&campaign=love_babbar_codestudio1&utm_source=youtube&utm_medium=affiliate&utm_campaign=love_babbar_codestudio1
 */
import UIKit

private class Solution {
    func findUnique() {
        let array = [2, 3, 1, 6, 3, 6, 2, 1, 10]
        var num = 0
        for numeric in array {
            num = num ^ numeric
            print(num)
        }
        print(num)
    }
}

extension UIViewController {
    func findUnique() {
        let a = Solution()
        a.findUnique()
    }
}

