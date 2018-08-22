class Practical::CLI

  def call
    Practical::Scraper.new.make_movies
    puts "Welcome to the 15 best horror movies made with practical effects!!"
    start
  end

  def start
    puts ""
    puts "What number movie would you like more information about?"
    input = gets.strip.to_i

    print_movies(input)

    puts ""
    puts "What movie would you like more information on?"
    input = gets.strip

    movie = Practical::CLI.find(input.to_i)

    print_movie(movie)

    puts ""
    puts "Would you like to see another print_movie? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
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

  def print_movies(from_number)
    puts ""
    puts "---------- Movies #{from_number} - #{from_number+14} ----------"
    puts ""
    Practical::Movies.all[from_number-1, 15].each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{movie.name}"
    end
  end

end