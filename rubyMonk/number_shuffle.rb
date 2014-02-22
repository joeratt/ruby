def number_shuffle(number)
  # your code here
  res = []
  num_str = number.to_s
  fact = (1..num_str.length).inject(:*)
  while res.uniq.size < fact do
    res << num_str.split(//).shuffle.join("").to_i
  end
    res.uniq.sort
end


puts number_shuffle(123)


