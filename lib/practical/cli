class Practical::CLI

  def call
    movies
    menu
    goodbye
  end
  
  def movies
    puts "A selection of the best horror movies with practial FX!"
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the movie you'd like to know more about!  Or, type 'movies' to see the list of movies, or 'exit'!"
      
      input = gets.strip.downcase
      if input.to_i > 0 
        puts @movies[input.to_i-1]
      elsif input == "movies"
        movies
      else
      case input
      when "1"
        puts "more info on the first movie"
      when "2"
        puts "more info on the second movie"
      end
      when "list"
        movies
      end
      else
       puts "Please choose a movie from the list, or type 'exit'"
      end
      
      def goodbye
        puts "I hope you enjoy this example of practical effects."
      end
      
      def movies
        @movies = Practical::Practical.movie
        @movies.each.with_index(1) do |movie, i|
          puts "#{i}. #{movie.name} - #{movie.director}"
    end
  end
end