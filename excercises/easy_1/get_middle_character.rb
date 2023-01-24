def center_of(string)
  string.size.even? ? string[string.size / 2 - 1, 2] : string[string.size / 2]
end

center_of('I love ruby')
center_of('Launch School')
center_of('Launch')
center_of('Launchschool')
center_of('x')
