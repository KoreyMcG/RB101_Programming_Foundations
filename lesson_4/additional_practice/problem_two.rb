ages = { "Herman" => 32,
         "Lily" => 30,
         "Grandpa" => 5842,
         "Eddie" => 10,
         "Marilyn" => 22,
         "Spot" => 237
}

# ages.values.sum

total = 0
ages.each { |key, value| total += value }

total
