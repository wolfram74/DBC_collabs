def valid_triangle_cor?(a, b, c)
  if a + b >= c then
      if a + c >= b then
          if c + b >= a then
              return true
    else
      return false
          end
      end
  end
end

def valid_triangle_brn?(a, b, c)
  while (a != 0 and b != 0 and c != 0) and (((a + b)> c) and ((a + c)> b) and ((b + c) > a))


    if (a**2) + (b**2) == c**2
      return true
    elsif (b**2) + (c**2) == a**2
      return true
    elsif (a**2) + (c**2) == b**2
      return true



    elsif a == b and b == c
      return true
    elsif a == b or b == c or a == c
      return true
    else
      return false
    end
  end
end

def valid_triangle_and?(a, b, c)
  if a <= 0 || b <= 0 || c <= 0
    return false
  elsif a == b && b == c && c == a || (a + b > c && b + c > a && a + c > b)
    return true
  else
      return false
  end
end

def valid_triangle_ptr?(a, b, c)
  sides = [a, b, c]
  sides.sort!
  return sides[2] < sides[1]+sides[0]
end

puts "testing cordelia's"
start_time = Time.now
1000.times do
valid_triangle_cor?(2,3,4)
valid_triangle_cor?(2,2,2)
valid_triangle_cor?(1,3,4)
valid_triangle_cor?(100,50,51)
end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx

puts "testing brandi's"
start_time = Time.now
1000.times do
valid_triangle_brn?(2,3,4)
valid_triangle_brn?(2,2,2)
valid_triangle_brn?(1,3,4)
valid_triangle_brn?(100,50,51)
end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx

puts "testing andrew's"
start_time = Time.now
1000.times do
valid_triangle_and?(2,3,4)
valid_triangle_and?(2,2,2)
valid_triangle_and?(1,3,4)
valid_triangle_and?(100,50,51)
end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx

puts "testing peters's"
start_time = Time.now
1000.times do
valid_triangle_ptr?(2,3,4)
valid_triangle_ptr?(2,2,2)
valid_triangle_ptr?(1,3,4)
valid_triangle_ptr?(100,50,51)
end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx

