require 'date'

def friday_13th(year)
  start_date = Date.new(year, 12, 31)
  end_date = Date.new(year, 1, 1)

  start_date.downto(end_date)
    .select { |date| date.friday? && date.day == 13 }
    .count
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
