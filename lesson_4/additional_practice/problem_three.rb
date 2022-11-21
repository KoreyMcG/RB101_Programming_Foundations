ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# selected_ages = {}
# 
# ages.map do |key, value|
#   selected_ages[key] = value if value < 100
# end
# 
# selected_ages

# ages.select! { |_, value| value < 100 }
# 
# ages

ages.delete_if { |key, value| value > 100 }

ages
