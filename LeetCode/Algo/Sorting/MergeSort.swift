//
//  MergeSort.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-22.
//

/*

 Merge Sort is a Divide and Conquer algorithm. It divides the input array into two halves, calls itself for the two halves, and then it merges the two sorted halves. The merge() function is used for merging two halves.


 https://www.raywenderlich.com/741-swift-algorithm-club-swift-merge-sort
 */

import UIKit

private class Solution {
    func mergeSort() {
        let array = [10,9,3,6,2,4,8,2,1,9,0]
        print(performMergeSort(array: array))
    }

    /// Keep Dividing the sub arrays and sort when we merge.
    /// - Parameter array: input array
    /// - Returns: merged arrays
    func performMergeSort(array: [Int]) -> [Int] {
        print("array == \(array)")
        guard array.count > 1 else { return array }

        let middleIndex = array.count / 2

        let leftArray = performMergeSort(array: Array(array[0..<middleIndex]))
        let rightArray = performMergeSort(array: Array(array[middleIndex..<array.count]))

        return merge(leftArray: leftArray, rightArray: rightArray)
    }

    func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {

        let leftCount = leftArray.count
        let rightCount = rightArray.count

        var leftIndex = 0
        var rightIndex = 0

        var result: [Int] = [Int]()

        while result.count < leftCount + rightCount {

            if leftIndex < leftArray.count && rightIndex < rightArray.count {
                if leftArray[leftIndex] < rightArray[rightIndex] {
                    result.append(leftArray[leftIndex])
                    leftIndex += 1
                } else {
                    result.append(rightArray[rightIndex])
                    rightIndex += 1
                }
            } else if leftIndex < leftArray.count {
                result.append(leftArray[leftIndex])
                leftIndex += 1
            } else if rightIndex < rightArray.count {
                result.append(rightArray[rightIndex])
                rightIndex += 1
            }
        }
        print("\nresult == \(result)\n")
        return result
    }
}

extension UIViewController {
    func mergeSort() {
        let a = Solution()
        a.mergeSort()
    }
}
