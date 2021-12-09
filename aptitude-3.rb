for i in 1...101 
    if i % 15 == 0
        printf("FizzBuzz\n")
    elsif i % 5 == 0
        printf("Buzz\n")
    elsif i % 3 == 0
        printf("Fizz\n")
    else
        printf("%d\n", i)
    end
end
