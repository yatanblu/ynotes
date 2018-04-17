require 'nokogiri'
require 'open-uri'

def url_scraper
  # variable for url
  url = "https://www.imdb.com/chart/top"
  # open HTML page
  html_content = open(url,"Accept-Language" => "en").read
  # read page and store necessary information
  # transform into nokogiri document
  html_doc = Nokogiri::HTML(html_content)
  # search on nokogiri document for URLS

  results = html_doc.search(".titleColumn a").map do |element|
   element.attribute("href").value
  end

  results_five = results.first(5)
  urls_format = results_five.map do |url|
  url = "https://www.imdb.com/" + url[0..15]
  end
p urls_format
end
#url_scraper


def movie_scraper(url)
  title_selector = ".title_wrapper h1"
  html_content = open(url, "Accept-Language" => "en").read
  html_doc = Nokogiri::HTML(html_content)
  result = html_doc.search(title_selector).map do |elements|
    title = elements.text
    year = elements.css("#titleYear a").text
    { title: title, year: year }
  end
  return result.pop
end

urls = url_scraper

results = urls.map do |url|
  movie_scraper(url)
end

p results


