# Service to transform personal webpage url into shortened version
# Makes use of google_url_shortener gem
# Used in UsersController#create on successful User save

class LinkShortenerService

  def initialize(url)
    @url = url
  end

  def self.shorten(url)
    new(url).shorten_url
  end

  def shorten_url
    Shortener::ShortenedUrl.generate(@url)

  end
end
