def uuid_generator
	uuid_values = [8, 4, 4, 4, 12]
	generator_values = %w(a b c d e f 0 1 2 3 4 5 6 7 8 9)
	uuid = ''
	
	uuid_values.each do |num|
		num.times { uuid << generator_values.sample }
		uuid << '-' if num != uuid_values.last
	end

	uuid
end

uuid_generator


# require 'securerandom'
# uuid = SecureRandom.uuid
# uuid
