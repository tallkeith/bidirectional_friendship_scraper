

class ScrapingService

  def initialize(url)
    @url = url
  end

  def self.scrape(url)
    new(url).scraper
  end

  def scraper
    unparsed_page = HTTParty.get(@url)
    parse_page = Nokogiri::HTML(unparsed_page)
    h1 = parse_page.css('h1')
    h2 = parse_page.css('h2')
    h3 = parse_page.css('h3')
  end
end
