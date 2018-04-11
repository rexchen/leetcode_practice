# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0 || (x % 10 == 0 && x != 0)

  result = 0
  while x > result
    result = result*10 + x%10
    x = x/10

  end
  return x==result || x==result/10
end

puts is_palindrome(1000)