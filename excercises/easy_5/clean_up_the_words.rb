def cleanup(string)
  string.gsub(/\W/, ' ').gsub(/\s{1,}/, ' ')
end

cleanup("---what's my +*& line?")
