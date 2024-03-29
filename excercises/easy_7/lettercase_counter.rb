def letter_case_count(string)
  {
    lowercase: (string.count "/[a-z]/"),
    uppercase: (string.count "/[A-Z]/"),
    neither: string.scan(/[^a-z]/i).count
  }
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
