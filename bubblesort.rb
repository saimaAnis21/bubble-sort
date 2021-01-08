# bubble sort for numerical arrays
def bubble_sort(num_array)
  len = num_array.length

  flag = 1

  while flag == 1
    flag = 0
    (0..len - 2).each do |i|
      next unless num_array[i] > num_array[i + 1]

      temp = num_array[i]
      num_array[i] = num_array[i + 1]
      num_array[i + 1] = temp
      flag = 1
    end
  end
  puts 'buble sorting numbers'
  puts num_array
end

bubble_sort([4, 35, 10, 6, 2, 5])

# bubble_sort_by for string arrays
def bubble_sort_by(greetings)
  len = greetings.length
  flag = 1
  while flag == 1
    flag = 0
    (0..len - 2).each do |i|
      next unless yield(greetings[i + 1], greetings[i]).negative?

      temp = greetings[i]
      greetings[i] = greetings[i + 1]
      greetings[i + 1] = temp
      flag = 1
    end
  end
  greetings
end

bubble = bubble_sort_by(%w[hi hello bye ciao adieu yo alo]) do |right, left|
  right.length - left.length
end
puts 'buble sorting strings'
puts bubble
