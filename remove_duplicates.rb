def remove_duplicates(nums)
  return 0 if nums.size == 0
  x = 0
  y = 0
  y_val = nums[y]
  while x < nums.size do 
    x_val = nums[x]
    if x_val == y_val then
      x += 1
      next
    else
      y_val = x_val
      y += 1
      nums[y] = x_val
    end
  end
  return (y+1)
end


puts remove_duplicates([1,2,2,3])