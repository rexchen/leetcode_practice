# Given a string, find the length of the longest substring without repeating characters.

# Examples:

# Given "abcabcbb", the answer is "abc", which the length is 3.

# Given "bbbbb", the answer is "b", with the length of 1.

# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  temp_hash = Hash.new(-1)
  largest = 0
  length = 0
  i = 0
  s.chars.each_with_index do |c, j|
    if temp_hash[c] == -1
      length = length + 1
      temp_hash[c] = j
    else
      old_index = i
      i = temp_hash[c] + 1
      if i < old_index
        i = old_index
      end
      length = j - i + 1
      temp_hash[c] = j 
    end
    # puts length
    largest = length if length > largest
  end
  return largest
end

puts length_of_longest_substring('pwwkew')


# abcabcbb
# abba
# pwwkew
# puts 'abc'.chars[0]