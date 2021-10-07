def stock_picker(arr)
  result = []
  diference = 0
  old_diference = 0

  arr.each_index do |start_day_idx|
    arr.each_index do |end_day_idx|
      if end_day_idx > start_day_idx 
        diference = arr[end_day_idx] - arr[start_day_idx]
        
        if diference > old_diference
          result = [start_day_idx, end_day_idx]
          old_diference = diference 
        end

      end
    end  
  end

  p result
  puts "with a profit of - #{ arr[result[1]] - arr[result[0]]}"

end

stock_picker([17,3,6,9,15,8,6,1,10])