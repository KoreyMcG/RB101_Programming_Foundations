# CONVERTER = {
#   0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',  # => "4"
#   5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'   # => "9"
# }                                                    # => {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}

CONVERTER = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(CONVERTER[remainder])
    break if number == 0
  end
  result
end

# def integer_to_string(number)
#   string_array = []
#   loop do
#     string_array << number.divmod(10).last
#     number = number.divmod(10).first
# 
#     break if number < 10
#   end
#   string_array << number
#   string_array.reverse.map { |num| CONVERTER[num] }.join('')
# end

integer_to_string(4321)
