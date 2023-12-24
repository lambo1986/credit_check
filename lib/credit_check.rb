card_number = "5541808923795240"
# Your Luhn Algorithm Here
def is_valid?(card_number)
  full_arr = card_number.chars.map { |num| num.to_i }
  first_half = full_arr.each_slice(2).map(&:first)
  second_half = full_arr.each_slice(2).map(&:last)
  first_half = first_half.map do |num|
    num * 2
  end
  first_half = first_half.map do |num|
    num > 9 ? num - 9 : num
  end
  full_arr = first_half + second_half
  full_arr.sum % 10 == 0
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
