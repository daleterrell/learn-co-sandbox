class Practical::Movie
  attr_accessor :name
 
  def self.create_movie
    movie_array = Practical::Scraper.scrape_movies
    movie_array.collect do |movie_hash|
      self.new(movie_hash)
    end
  end

  # def new_from_index_page
  # end 
end