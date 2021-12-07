def is_included?(item, array)
  found = false

  for i in 0..array.size do
    puts (i)
    if array[i] == item
      found = true
      break
    end
  end

  found
end

item = "Dog"
array = ["Cow", "Goat", "Rabbit", "Horse"]
puts is_included?(item, array)

item = "Cow"
array = ["Cow", "Goat", "Rabbit", "Horse"]
puts is_included?(item, array)
