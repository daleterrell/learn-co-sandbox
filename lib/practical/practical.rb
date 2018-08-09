class Practical::Practical
  attr_accessor :name
  
  def self.scrape_movies
    movies = []
    
    movies << self.scrape_screenrant
    movies << self.scrape_top10hq
    
    
    
    [movie]
    
    def self.scrape screenrant
      doc = Nokogiri::HTML (open(https://screenrant.com/horror-movies-used-practical-effects-no-cgi/))
    end
    
    movie = self.new 
    movie.name = doc.search("h3.main-title")text
    
    def self.scrape scrape top10hq
      doc = Nokogiri::HTML (open(https://www.top10hq.com/top-10-best-make-special-effects-horror-movies/))
    end
    
    movie = self.new
    movie.name = doc.search("h2.item-title")text
    
  end
end