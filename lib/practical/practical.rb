class Practical::Movie
  attr_accessor :name
  
  def self.scrape_movies
    movies = []
    
    movies << self.scrape_screenrant
    movies << self.scrape_top10hq
  end
    
    
    def self.scrape_screenrant
      doc = Nokogiri::HTML (open("https://screenrant.com/horror-movies-used-practical-effects-no-cgi/"))
    
    movie = self.new 
    movie.name = doc.search("h3.main-title").text
  end
    
    def self.scrape_top10hq
      doc = Nokogiri::HTML (open("https://www.top10hq.com/top-10-best-make-special-effects-horror-movies/"))
    
    
    movie = self.new
    movie.name = doc.search("h2.item-title").text
  
  end
end