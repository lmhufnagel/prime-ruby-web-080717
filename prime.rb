
def sieve(max)
  prime_num = (0..max).to_a

  prime_num[0] = prime_num[1] = nil

  counter = 0
  prime_num.each do |integer|
    next unless integer
    break if integer*integer > max
    counter += 1

    (integer*integer).step(max,integer) { |multiple| prime_num[multiple] = nil }
  end

prime_num
end

def prime?(num)
  sieve(num).include?(num)
end

puts prime?(15)
