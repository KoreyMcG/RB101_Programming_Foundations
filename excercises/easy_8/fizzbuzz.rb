def fizzbuzz(start_number, end_number)
  array = (start_number...end_number).to_a
  array.map do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      'fizzbuzz'
    elsif n % 3 == 0
      'fizz'
    elsif n % 5 == 0
      'buzz'
    else
      n
    end
  end
end

fizzbuzz(1, 15)
