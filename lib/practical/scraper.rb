require 'pry'
require 'nokogiri'
require 'open-uri'
class Practical::Scraper


  def name
    doc = Nokogiri::HTML(open("https://screenrant.com/horror-movies-used-practical-effects-no-cgi/"))
    puts doc
    movie = []
     movie_name = doc.search("item-title.art-body-content.article-body.article.page_content.w-content.w-website").text
     movie << movie_name
     
     info = []
     info = doc.search("p item-title.art-body-content.article-body.article.page_content.w-content.w-website")
    binding.pry
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