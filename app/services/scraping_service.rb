# Web Scraping Service that takes in a user's url and grabs all of the h1, h2,
# and h3 tags on the page. Called from UsersController#show
class ScrapingService

  def initialize(url)
    @url = url
  end

  def self.scrape(url)
    new(url).scraper
  end

  def scraper
    unparsed_page = HTTParty.get(@url)
    Nokogiri::HTML(unparsed_page)
  end
end
