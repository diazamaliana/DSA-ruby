def search(input_array, search_value)
  binary_search(input_array, search_value)
  linear_search(input_array, search_value)
end

def linear_search(input_array, search_value)
  i = 0
  found = false

  while (i < input_array.size) do
    if (input_array[i] == search_value)
      return i
    end
    
    i = i + 1
  end

  return found
end
  
def binary_search(input_array, search_value)
  lower_bound = 0
  upper_bound = input_array.size - 1
  found = false

  while(upper_bound >= lower_bound) do
    midpoint = (lower_bound + upper_bound)/2

    if input_array[midpoint] == search_value
      return midpoint
    elsif input_array[midpoint] < search_value
      lower_bound = midpoint + 1
    elsif input_array[midpoint] > search_value
      upper_bound = midpoint - 1
    end
  end

  return found
end



input_array = ["Cow", "Goat", "Rabbit", "Horse"]
search_value = "Rabbit"
puts search(input_array, search_value)
