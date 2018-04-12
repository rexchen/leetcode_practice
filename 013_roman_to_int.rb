Given a roman numeral, convert it to an integer.

Input is guaranteed to be within the range from 1 to 3999.

# @param {String} s
# @return {Integer}


# I=1, V=5, X=10, L=50, C=100, D=500, M=1000
def roman_to_int(s)
  total = 0
  old = 0
  arr = s.chars
  i = 0
  while i != arr.length
    case arr[arr.length-i-1]
      when 'I'
        v = 1
      when 'V'
        v = 5
      when 'X'
        v = 10
      when 'L'
        v = 50
      when 'C'
        v = 100
      when 'D'
        v = 500
      when 'M'
        v = 1000
      else
        v = 0
    end

    if old > v
      total = total - v
    else
      total = total + v
    end
    # puts total
    old = v
    i = i + 1
  end
  return total
end

puts roman_to_int('DCXXI')
# 1996