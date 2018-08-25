require 'pry'
class Practical::Movie
  attr_accessor :name
 
 # def self.create_movie
 #   movie_array = Practical::Scraper.name
 #   movie_array.collect do |movie_hash|
 #     self.new(movie_hash)
 #   end
 # end
  
   def self.name
    movie = Practical::Scraper.name
  #  @movie.each.with_index(1) do |movie, i|
  #     puts "#{i}. #{movie}"
  #  end
  end


  # def new_from_index_page
  # end 
end