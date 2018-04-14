def first_uniq_char(s)
  new_hash = Hash.new(-1)
  s.chars.each_with_index do |c, i|
    if new_hash[c] == -1
      new_hash[c] = i
    else
      new_hash[c] = -2
    end
    
  end

  new_hash.each do |k,v|
    if v != -2
      return v
    end
  end

  return -1
end

puts first_uniq_char('loveleetcode')