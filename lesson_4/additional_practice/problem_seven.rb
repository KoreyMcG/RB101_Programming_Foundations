statement = "The Flintstones Rock"

array = statement.chars

hash = {}

array.each_with_object({}) do |key, _|
  hash[key] = statement.count(key)
end

hash
