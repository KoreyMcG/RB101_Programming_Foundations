munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

munsters

# My answer:
# The demographics were altered; While the each method returns self 
# the "age" key was reassigned to have an additional 42 while the "gender" key 
# on each value was reassigned to "other".  
# The keys values are being reassigned through iteration.
#
# Better answer after seeing answer:
# The munsters object_id is passed into the method definition (pass by reference)
# The actual has is being altered in the each method. (not a clone)
