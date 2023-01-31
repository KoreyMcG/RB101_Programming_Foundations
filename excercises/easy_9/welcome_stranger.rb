def greetings(name, career)
  puts "Hello, #{name.join(' ')}!" +
       " Nice to have a #{career[:title]} #{career[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
