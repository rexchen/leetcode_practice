# There are two sorted arrays nums1 and nums2 of size m and n respectively.

# Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

# Example 1:
# nums1 = [1, 3]
# nums2 = [2]

# The median is 2.0
# Example 2:
# nums1 = [1, 2]
# nums2 = [3, 4]

# The median is (2 + 3)/2 = 2.5

def find_median_sorted_arrays(nums1, nums2)
  arr = (nums1 + nums2).sort
  quotient = arr.length / 2
  remainder = arr.length % 2

  if remainder == 0
    result = (arr[quotient-1]+arr[quotient])/2.0
  else
    result = arr[quotient]+0.0
  end
  return result
end

puts find_median_sorted_arrays([1,2],[3])