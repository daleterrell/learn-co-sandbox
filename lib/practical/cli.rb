require 'pry'
class Practical::CLI

  def call
#    Practical::Scraper.new.make_movies
    puts "Welcome to the 10 best horror movies made with practical effects!!"

    start
  end

  def start
    puts ""
    puts "What number movie would you like more information about?"
    input = gets.strip.downcase
  #  while input != "exit"
    if input.to_i>0 
      movie = Practical::Scraper.name
      binding.pry
    puts ""
    puts "---------- Movies #{movie} - #{movie} ----------"
    puts ""
    puts ""
    puts "Would you like to see information on another movie? Enter Y or N"

    input = gets.strip.downcase
    
   
    elsif input == "n"||"exit"
      puts ""
      puts "Thank you! I hope you enjoy any horror movie, and maybe it'll be a movie from this list!"
      exit
    elsif
      puts ""
      puts "I don't understand that answer."
      start
    end
  end

  def print_movie(movie)
    puts ""
    puts "----------- #{movie.name} -----------"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{movie.description}"
    puts ""
  end

 
  

end