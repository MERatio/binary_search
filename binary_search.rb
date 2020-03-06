# frozen_string_literal: true

def binary_search(arr, target)
  return false if arr.length.zero?

  mid_value = arr[arr.length / 2]
  if target == mid_value
    true
  elsif target < mid_value
    binary_search(arr[0..arr.index(mid_value) - 1], target)
  elsif target > mid_value
    binary_search(arr[arr.index(mid_value) + 1..-1], target)
  end
end

sorted_arr = [0, 2, 5, 8, 9, 11, 14, 19, 27, 39]

p binary_search(sorted_arr, 10)
