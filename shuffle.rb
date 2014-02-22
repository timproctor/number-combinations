def shuffle(number)
  num_combinations = Array.new

  uniq_nums = number.to_s.split("").uniq
  raise "Numbers should all be unique" if uniq_nums.length != number.to_s.length

  until num_combinations.length == factorial(number.to_s.length)
    num_combinations << uniq_nums.shuffle.join.to_i
    num_combinations.uniq!
  end
  
  num_combinations.sort
end

def factorial(num)
  return 1 if num == 0
  num * factorial(num - 1)
end

p shuffle(12) => [12, 21]
p shuffle(123) => [123, 132, 213, 231, 312, 321]
p shuffle(6) => [6]
