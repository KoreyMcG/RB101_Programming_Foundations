ages = { "Herman" => 32,
         "Lily" => 30,
         "Grandpa" => 5843,
         "Eddie" => 10,
         "Marilyn" => 22,
         "Spot" => 237
}

# total = 0                                   # => 0
# 
# ages.each_value { |value| total += value }  # => {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
# 
# total  # => 6174

# ages.values.sum  # => 6174

ages.values.inject(:+)
