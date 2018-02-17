def fizz_buzz(n)
  if n % 15 == 0
    return "FizzBuzz"
  elsif n % 5 == 0
    return "Buzz"
  elsif n % 3 == 0
    return "Fizz"
  else
    return n.to_s
  end
end

n = ARGV[0]
puts fizz_buzz(n.to_i);
