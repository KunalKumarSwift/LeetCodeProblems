//
//  find-all-duplicates-in-an-array.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-03-30.
//

/*
 https://leetcode.com/problems/find-all-duplicates-in-an-array/
 */
/*
 Specific to this problem only
 // when find a number i, flip the number at position i-1 to negative.
 // if the number at position i-1 is already negative, i is the number that occurs twice.
 becuase digits are between 1...n
 */
import UIKit
// Brute Force
private class Solution {
    func findAllDuplicatesInAnArray() -> [Int] {
        let nums = [4,3,2,7,8,2,3,1]
        var numDict: [Int: Int] = [Int: Int]()

        for n in nums {
            if numDict.keys.contains(n) {
                numDict[n]! += 1
            } else {
                numDict[n] = 1
            }
        }


        let result1 = numDict.filter { (key: Int, value: Int) in
            return value == 2
        }
        return Array(result1.keys)
    }

    func leetCodeSolution() {
        var nums = [4,7, 3,2,8,2,3,1]
        var output = [Int]()
        for num in nums {
            let index = abs(num) - 1
            if nums[index] < 0 {
                output.append(num)
            }
            nums[index] = -1 * nums[index]
        }
        print(output)

    }

// not working

//    func kunalSolution() {
//        var result = [Int]()
//        var nums = [4,7, 3,2,8,2,3,1]
//        while (!nums.isEmpty) {
//            let e = nums.removeFirst()
//            traverseSlice(slice: nums.dropFirst(), element: e, result: &result)
//
//        }
//        print(result)
//    }
//
//    func traverseSlice(slice: ArraySlice<Int>, element: Int, result: inout [Int]) {
//        for n in slice {
//            if element ^ n == 0 {
//                result.append(n)
//
//            }
//        }
//    }
}

extension UIViewController {
    func findAllDuplicatesInAnArray() {
        let a = Solution()
        a.findAllDuplicatesInAnArray()
        //a.leetCodeSolution()
//        a.kunalSolution()
    }
}
