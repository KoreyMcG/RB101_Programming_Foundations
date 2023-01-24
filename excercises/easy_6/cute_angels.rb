DEGREE = '°'

def dms(number)
  total_seconds = (number * (60 * 60)).round
  degrees, remaining_seconds = total_seconds.divmod(60 * 60)
  minutes, seconds = remaining_seconds.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30)
dms(76.73)
dms(254.6)
dms(93.034773)
dms(0)
dms(360)
