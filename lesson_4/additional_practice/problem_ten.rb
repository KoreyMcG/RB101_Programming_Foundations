munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# munsters.each do |key, value|
#   if value.dig('age') > 65
#     munsters[key]["age_group"] = "senior"
#   elsif value.dig('age') > 18
#     munsters[key]["age_group"] = "adult"
#   else
#     munsters[key]["age_group"] = "kid"
#   end
# end

# munsters.each do |key, value|
#   case munsters
#   when munsters.dig(key, 'age') > 65
#     munsters[key]["age_group"] = 'senior'
#   when munsters.dig(key, 'age') > 18
#     munsters[key]["age_group"] = 'adult'
#   else
#     munsters[key]["age_group"] = 'kid'
#   end
# end

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = 'adult'
  else
    details["age_group"] = 'senior'
  end
end

munsters
