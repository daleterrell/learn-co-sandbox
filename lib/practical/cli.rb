class Practical::CLI

  def call
#    Practical::Scraper.new.make_movies
    puts "Welcome to the 10 best horror movies made with practical effects!!"
    start
  end

  def start
    puts ""
    puts "What number movie would you like more information about?"
    input = gets.strip.to_i


    puts ""
    puts "Would you like to see information on another movie? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
    from_number = Practical::Scraper.get_page
    puts ""
    puts "---------- Movies #{from_number} - #{from_number+10} ----------"
    puts ""
    from_number.each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{movie.name}"
  end
    elsif input == "n"
      puts ""
      puts "Thank you! I hope you enjoy any horror movie, and maybe it'll be a movie from this list!"
      exit
    else
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