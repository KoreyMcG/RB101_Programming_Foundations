def uppercase?(string)
  !!string.match(/^[^a-z]+$/)
end

uppercase?('t')
uppercase?('T')
uppercase?('Four Score')
uppercase?('FOUR SCORE')
