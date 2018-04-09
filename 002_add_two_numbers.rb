# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Example

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.


# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

# 342 + 465 = 807
def add_two_numbers(l1, l2)
  add = 0
  total = []

  while(l1 || l2) do

    a = l1 ? l1.val : 0
    b = l2 ? l2.val : 0

    total.push((a+b+add)%10)

    if (a+b+add) >= 10
      add = 1
    else
      add = 0
    end

    l1 = l1 && l1.next ? l1.next : nil
    l2 = l2 && l2.next ? l2.next : nil
  end

  total.push(1) if add == 1
  return total
end




l13 = ListNode.new(3)

l12 = ListNode.new(4)
l12.next = l13

l1 = ListNode.new(2)
l1.next = l12

l23 = ListNode.new(4)

l22 = ListNode.new(6)
l22.next = l23

l2 = ListNode.new(5)
l2.next = l22

puts add_two_numbers(l1, l2)