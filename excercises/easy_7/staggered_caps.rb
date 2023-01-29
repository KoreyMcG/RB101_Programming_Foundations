def staggered_case(string)
  string.chars.map.with_index do |letter, index|
    index.even? ? letter.upcase : letter.downcase
  end.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
