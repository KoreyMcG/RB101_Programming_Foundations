def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3
  case average
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end
end

get_grade(95, 90, 93)
get_grade(50, 50, 95)
