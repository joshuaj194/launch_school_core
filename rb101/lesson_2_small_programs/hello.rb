require "pry"

Kernel.puts("hello world! How are you doing?")
response = gets.chomp
binding.pry

puts "Glad to hear you are doing #{response}"

