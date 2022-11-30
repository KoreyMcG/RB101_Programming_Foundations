ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.each_with_object({}) do |(key, value), hash|
  hash[key] = value if value < 100
end

ages.select! { |_, value| value < 100 }

ages
