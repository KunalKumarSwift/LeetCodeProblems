//
//  AddTwoNumbers.swift
//  LeetCode
//
//  Created by Kunal Kumar on 2021-12-13.
//

import Foundation
import UIKit

/// https://leetcode.com/problems/add-two-numbers/

/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension ListNode {
    func lastNode() -> ListNode? {
        if self.next == nil {
            return self
        } else {
            return self.next?.lastNode()
        }
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        return self.neighbourValues()
    }

    func neighbourValues() -> String {
        guard let next = self.next else {
            return "\(self.val)"
        }
        return "\(self.val) -> \(next.neighbourValues())"
    }
}
class AddTwoNumbers {

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        var ll1 = l1
        var ll2 = l2
        var carry = 0
        var result: ListNode?
        var shouldContinue = true
        while (shouldContinue || carry > 0) {
            shouldContinue = ll1?.next != nil || ll2?.next != nil
            if result != nil {
                ll1 = ll1?.next
                ll2 = ll2?.next
            }

            var sum = 0
            if let val1 = ll1?.val {
                sum += val1
            }
            if let val2 = ll2?.val {
                sum += val2
            }

            sum += carry

            if sum > 9 {
                carry = 1
                sum = sum % 10
            } else {
                carry = 0
            }

            if result == nil {
                result = ListNode(sum)
            } else {
                if shouldContinue == false && carry == 0 {
                    return result
                }
                result?.lastNode()?.next = ListNode(sum)
            }
        }
        return result
    }
}

extension UIViewController {
    func addTwoNumbers() {
        let l1 = ListNode(2)
        let l2 = ListNode(4)
        let l3 = ListNode(3)
        let l4 = ListNode(3)

        l1.next = l2
        l2.next = l3
        l3.next = l4

        let r1 = ListNode(5)
        let r2 = ListNode(6)
        let r3 = ListNode(4)
        let r4 = ListNode(4)

        r1.next = r2
        r2.next = r3
        r3.next = r4

        let addNum = AddTwoNumbers()
        print("------------")
        print(addNum.addTwoNumbers(l1, r1) ?? "Node is nil")
    }
}
