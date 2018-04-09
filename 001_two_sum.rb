# 1. Two Sum
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

def two_sum(nums, target)
  temp_hash = {}
  nums.each_with_index do |n , i|
    diff = target - nums[i]
    if temp_hash[diff]
      return [temp_hash[diff],i]
    else
      temp_hash[n] = i
    end
  end
end