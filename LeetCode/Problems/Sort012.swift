//
//  Sort012.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2022-04-06.
//

/*
 https://www.codingninjas.com/codestudio/problems/sort-0-1-2_631055?source=youtube&campaign=LoveBabbar_Codestudiovideo1&utm_source=youtube&utm_medium=affiliate&utm_campaign=LoveBabbar_Codestudiovideo1
 */

import UIKit

private class Solution {
    func sort012() {

        var nums = [2,2,0,0,0,0,1,2,2]//[1,2,0,0]//[0,0,1,0,1,1]//[2,1,0]//[2,0,2,1,1,0]//[1,2,0]//[1,0]//[2,0,2,1,1,0] //[2,2,1]//[1, 0, 1] //[2,0,2,1,1,0]
        var i = 0
        var k = nums.count - 1
        var j: Int = 0//k/2


        var greaterElement = 0
        var smallerElement = 0

        var step = 0

        if nums.count == 1 { return }

        if nums.count < 3 {
            if nums[i] > nums[j] {
                greaterElement = nums[i]
                smallerElement = nums[j]

                nums[i] = smallerElement
                nums[j] = greaterElement
            }

        } else {
            while (j <= k) {


                if(nums[j] == 0){

                    greaterElement = nums[i]
                    smallerElement = nums[j]

                    nums[i] = smallerElement
                    nums[j] = greaterElement

                    i += 1
                    j += 1

                } else if(nums[j] == 1){
                    j += 1

                } else if(nums[j] == 2){

                    greaterElement = nums[j]
                    smallerElement = nums[k]

                    nums[k] = greaterElement
                    nums[j] = smallerElement

                    k -= 1

                }
            }
        }
    }
}

extension UIViewController {
    func sort012() {
        let a = Solution()
        a.sort012()
    }
}



class Solution1 {
    func sortColors(_ nums: inout [Int]) {
        var i = 0
        var j = i+1
        var k = nums.count - 1

        var firstElement = 0
        var lastElement = 0


        while (j <= k) {


            if nums[i] > nums[k] {
                firstElement = nums[i]
                lastElement = nums[k]

                nums[i] = lastElement
                nums[k] = firstElement
            }

            if nums[j] > nums[k] {
                firstElement = nums[j]
                lastElement = nums[k]

                nums[k] = firstElement
                nums[j] = lastElement
            }

            if nums[k] == 2 {
                k -= 1
            }

            if nums[i] == 0 {
                i += 1
            }

            if nums[j] == 1 {
                j += 1
            }
        }
    }

}
