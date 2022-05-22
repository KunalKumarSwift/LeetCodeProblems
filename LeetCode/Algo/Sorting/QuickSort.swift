//
//  QuickSort.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-05-22.
//

import UIKit

//https://www.geeksforgeeks.org/quick-sort/
//##QuickSort
// Like Merge Sort, QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways.
//
// Always pick first element as pivot.
// Always pick last element as pivot (implemented below)
// Pick a random element as pivot.
// Pick median as pivot.
// The key process in quickSort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.
//
// ###Other References
// https://www.raywenderlich.com/books/data-structures-algorithms-in-swift/v3.0/chapters/34-quicksort
//
// The implementation below recursively filters the array into three partitions. Let’s look at how it works:
//
// There must be more than one element in the array. If not, the array is considered sorted.
// Pick the middle element of the array as your pivot.
// Using the pivot, split the original array into three partitions. Elements less than, equal to or greater than the pivot go into different buckets.
// Recursively sort the partitions and then combine them.


private class Solution {
    func quickSort() {
        print(performQuickSort(array: [10,9,3,6,2,4,8,2,1,9,0]))
    }

    /// The implementation below recursively filters the array into three partitions.
    /// - Parameter array: The input array
    /// - Returns: sorted array combining different buckets
    ///:  ![quicksort](quicksort.png)
    func performQuickSort(array: [Int]) -> [Int] {
        /// A single element array is always sorted. Using it as a termination conditon.
        guard array.count > 1 else {
            return array
        }
        /// Using middle index as pivot
        let pivotIndex = array.count / 2
        let pivotElement = array[pivotIndex]

        print("pivotElement == \(pivotElement)")

        /// Arrange elements in different buxkets
        let lowerBucket = array.filter { $0 < pivotElement }
        let equalBucket = array.filter { $0 == pivotElement }
        let greaterBucket = array.filter { $0 > pivotElement }

        print("lowerBucket == \(lowerBucket)")
        print("equalBucket == \(equalBucket)")
        print("greaterBucket == \(greaterBucket)")

        return performQuickSort(array: lowerBucket) + equalBucket + performQuickSort(array: greaterBucket)
    }
}

extension UIViewController {
    func quickSort() {
        let a = Solution()
        a.quickSort()
    }
}

