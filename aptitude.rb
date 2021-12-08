def array(input)
  i = 0
  s = 0

  while (i < input.size) do
    s = s + input[i]
    i = i + 1
  end

  return s
end

input = [5, 7, 8, 3]
puts array(input)
puts "====="

def foo(x, a, b, i, j)
  k = j
  ct = 0

  while (k > i-1) do
    if x[k] <= b and not (x[k] <= a)
      ct = ct + 1
    end
    k = k - 1 
  end

  return ct
end
x = [11,10,10,5,10,15,20,10,7,11]
puts foo(x,8,18,3,6)
puts foo(x,10,20,0,9)
puts foo(x,8,18,6,3)
puts foo(x,20,10,0,9)
puts foo(x,6,7,8,8)
puts "====="

def g(str)
  i = 0
  String new_str = ""

  while (i < str.length - 1) do
    new_str = new_str + str[i + 1]
    i = i + 1
  end

  return new_str
end

def f(str)
  if str.length == 0
    return ""
  elsif str.length == 1
    return str
  else
    return f(g(str)) + str[0]
  end
end

def h(n , str)
  while (n != 1) do
   if n % 2 == 0
      n = n/2
    else
      n = 3*n + 1
    end
    str = f(str)
  end
  return str
end

def pow(x , y)
  if y == 0
    return 1
  else
    return x*pow(x, y-1)
  end
end

puts h(1, "fruits")
puts h(2, "fruits")
puts h(5, "fruits")
puts h(pow(2, 1000), "fruits")
puts h(pow(2, 9831), "fruits")
















