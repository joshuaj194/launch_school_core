flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# in the index, Find the index of the first name that starts with "Be"

puts flintstones.filter_map { |person| person if person.start_with?("Be")}