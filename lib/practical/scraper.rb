require 'pry'
require 'nokogiri'
require 'open-uri'
class Practical::Scraper


  def name
    doc = Nokogiri::HTML(open("https://www.pophorror.com/top-ten-best-practical-effects-in-horror/"))
 #   puts doc
    movie = []
     movie_name = doc.search("div p strong").text
     movie << movie_name
    binding.pry
  end
  
  

  def scrape_movies_index
    
  end

 
 # def self.scrape_movies
 #   movies = []
 #   
 #   movies << self.scrape_
 # end
    
    
 # def make_movies
 #   scrape_movies_index.each do |r|
 #     Practical::Movie.new_from_index_page(r)
 #    end
 #  end
end