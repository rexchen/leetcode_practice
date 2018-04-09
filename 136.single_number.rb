# Given an array of integers, every element appears twice except for one. Find that single one.

def single_number(nums)  
  result = 0
  for i in nums
    result = result ^ i
  end
  return result
end

single_number([1,2,3,4,5,4,3,2,1])