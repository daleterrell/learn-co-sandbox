require "ruby_1/version"

module Ruby1
  class Error < StandardError; end
  puts "Welcome to 'Get My Number!'"
  
  #get name 
  print "What's your name?"
  input = gets 
  name = gets.chomp 
  puts "Welcome, #{name}!"
  
  #store random number for player to guess
  puts "I've got a random number between 1 and 100"
  puts "Can you guess it?"
  target = rand(100) + 1
end
