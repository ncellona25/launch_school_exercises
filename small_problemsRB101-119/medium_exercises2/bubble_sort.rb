def bubble_sort!(arr)
  return arr if arr.size <= 1
  unsorted_until_index = arr.size - 1
  swapped = false
  until swapped
    swapped = true
    for i in (0..unsorted_until_index)
      if arr[i+1]
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = false
        end
      end
    end
    unsorted_until_index -= 1
  end
  arr
end


p bubble_sort!([5, 3])
p bubble_sort!([6, 2, 7, 1, 4])
p bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))