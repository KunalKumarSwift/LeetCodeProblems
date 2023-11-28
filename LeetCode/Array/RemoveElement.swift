//
//  RemoveElement.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-30.
//

import UIKit

private class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var removedIndexes = 0
        for i in 0..<nums.count {
            if nums[i] == val {
                nums.remove(at: i - removedIndexes)
                removedIndexes += 1
            }
        }
        return nums.count
    }
}

extension UIViewController {
    func removeElement() {
        let a = Solution()
        var arr = [0,1,2,2,3,0,4,2]
        a.removeElement(&arr, 2)
        print(arr)
    }
}

