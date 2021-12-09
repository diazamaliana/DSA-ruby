def f(a, b, k)
  ct = 0
  while (a <= b) do
    if a%k == 0 
      ct = ct + 1
    end
    a = a + 1
  end
  return ct
end

puts f(4351, 9619, 3983)
puts f(9169, 9810, 38)
puts f(2, 10, 1)
