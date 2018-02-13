number = ARGV[0].to_f
limit_point = 5
now_limit_point = 0;

answer = 1.0
div    = 1.0
while now_limit_point < limit_point do
  if number == 1
    break
  end  

  tmp_answer = answer + div
  if tmp_answer ** 2 > number 
    div /= 10
    now_limit_point += 1
    next
  else
    answer = tmp_answer
    if tmp_answer * tmp_answer == number 
      break
    end
  end
end
puts answer

