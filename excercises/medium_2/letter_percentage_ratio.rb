def letter_percentages(string)
  {
    lowercase: string.count('a-z') / string.size.to_f * 100,
    uppercase: string.count('A-Z') / string.size.to_f * 100,
    neither: string.count('^A-Za-z') / string.size.to_f * 100
  }
end

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
