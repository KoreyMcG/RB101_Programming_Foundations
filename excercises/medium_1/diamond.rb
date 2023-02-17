#  def diamond(n)
#    counter = 0
#    asterisk_multiplier = 1
#  
#    until counter == n
#      puts ('*' * asterisk_multiplier).center(n)
#  
#      counter += 1
#      counter > (n / 2) ? asterisk_multiplier -= 2 : asterisk_multiplier += 2
#    end
#  end

def diamond(n)
  counter = 0
  multiplier = 1

  until counter == n
    array = []
    multiplier.times do
      array << '*'
    end

    array.map!.with_index do |star, index|
      index == 0 || index == array.size - 1 ? star : star = ' '
    end

    counter += 1
    counter > (n / 2) ? multiplier -= 2 : multiplier += 2
    p array.join.center(n)
  end
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)
