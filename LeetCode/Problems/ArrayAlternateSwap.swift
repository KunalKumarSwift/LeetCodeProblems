//
//  ArrayAlternateSwap.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-03-30.
//

import UIKit

private class Solution {
    func alternateSwap() {
        let array = [1,2,3,4,5,6,7]
        var index = 0
        var arr = array
        while (index + 1 < arr.count) {
            arr = swap(arr: arr, start: index, end: index + 1)
            index += 2
        }
        print(arr)
    }

    private func swap(arr: [Int], start: Int, end: Int) -> [Int] {
        let startValue = arr[start]
        let endValue = arr[end]

        var result = arr
        result[end] = startValue
        result[start] = endValue
        return result
    }
 }

extension UIViewController {
    func alternateSwap() {
        let a = Solution()
        a.alternateSwap()
    }
}
