# Given a 32-bit signed integer, reverse digits of an integer.

# Example 1:

# Input: 123
# Output:  321
# Example 2:

# Input: -123
# Output: -321
# Example 3:

# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.


# @param {Integer} x
# @return {Integer}


# 解法1
# 字串拆開，loop 反轉
# 解法2
# 123 / 10 = 12餘3  12/10 = 1餘2 1/10= 0餘1
def reverse(x)
  int32_max = 2**31
  int32_min = -1*2**31

  v = x.abs
  result = 0
  while v != 0
    result = result*10 + v%10
    v = v/10
  end
  result = -1 * result if x < 0

  puts int32_max
  return 0 if result > int32_max || result < int32_min
  return result
end

puts reverse(1563847412)