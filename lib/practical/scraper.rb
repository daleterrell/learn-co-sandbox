require 'pry'
class Practical::Scraper


  def get_page
    html = open("https://www.pophorror.com/top-ten-best-practical-effects-in-horror/")
    doc = Nokogiri::HTML(html)
    binding.pry
  end

  def scrape_movies_index
     self.get_page.css("div p strong")
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