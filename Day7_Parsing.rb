#KEY Shortcuts
# ALT - 5 => []
# ALT - 7 => ||
# ALT - 8 => {}


## DAY 7:

# INDEX
# 1. CSV
# 2. JSON
# 3. XML
# 4. JSON API
# 5. LIVECODE

# 1. PARSING

Stack overflow: What are the ruby file open modes and options

# 1. CSV
# widely used but lack of a standard
## PARSING CSV
# ruby doc CSV

### BEST PRACTICE
CSV, commas & quotes
["Name", "Appearance", "Origin"]

### PARSING CSV

require 'csv'

filepath = 'filenamecsv'

csv_options = {col_sep:, ";", :first_row}
BEERS = {name: VALUE, appearance: VALUE, origin: VALUE}


CSV.foreach(filepath, csv_options) do |row|
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
  p row
beers << {name row[0], appearance: row[1], origin: row[2]}
end

p beers

## Filter only belgium beers
beers.select do |beer_hash|
  #origin
  beer_hash[:origin] == "Belgium"
end

p beers


### STORING CSV
require 'csv'

filepath = 'filenamecsv'

csv_options = { col_sep: ',', force_quites: true, quote_char: '"'}

CSV.open (filepath, 'wb', csv_options) do |csv|  # watch for WB

csv << ['Name', 'Appearance','Origin']  # you are storing ARRAY
csv << ['Asahi', 'Pale Lager','']

OR
beers.each do |beer_hash|
  csv << [beer_hash[:name], beer_hash[:appearance], beer_hash[:origin]] # you are storing ARRAY

XML -- Human / machine readable  , antiguated
<beers>

# 2. JSON

JSON
www.jsonlint.com # to validate


## PARSING JSON

require 'json'

filepath = 'data/beers.json'

serialized_text = File.read(filepath)
json = JSON.parse(serialized_text)

p json

json.each do |beer_hash|
  p beer_hash["name"]

## STORING JSON
require 'json'

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
  # etc...
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end


# 3. XML
# We use Nokogiri
install nokogiri from github # afterwards on rails

## PARSING NOKOGIRI
require 'nokogiri'

file      = File.open('beers.xml')
document  = Nokogiri::XML(file)

document.root.xpath('beer').each do |beer|
  name        = beer.xpath('name').text
  appearance  = beer.xpath('appearance').text
  origin      = beer.xpath('origin').text

  puts "#{name}, a #{appearance} beer from #{origin}"
end

## STORING NOKOGIRI
require 'nokogiri'

filepath  = 'beers.xml'
builder   = Nokogiri::XML::Builder.new(encoding: 'UTF-8') do
  beers do # big tag
    beer do # sub tag
      name        'Edelweiss' # Can also iterate with .each etc
      appearance  'White'
      origin      'Austria'
    end
    beer do
      # [...]
    end
  end
end

File.open(filepath, 'wb') { |file| file.write(builder.to_xml) }


# 4. JSON API

# BIG APIS
http://programmableweb.com/apis/directory
http://developers.facebook.com/docs
http://developers.google.com/maps
http://twilio.com/docs/usage/API
http://api.stripe.com
http://www.mapbox.com
http://snazzymaps.com

# api.chucknorris.io , itsthisforthat.com


### EXAMPLE

require 'json'
require 'open-uri'

url = "https://api.chucknorris.io/jokes/categories"
url = "https://api.chucknorris.io/jokes/random?categories?category=dev"

text = "open"


### SCRAPING

http://reveal.js



# 5. LIVECODE

# INSTRUCTIONS
# IMDB Scrapper

# Write a program which scraps the top 5 films on IMDB and dump this information into a movies.yml file:

# - cast:
#     - "Tim Robbins"
#     - "Morgan Freeman"
#     - "Bob Gunton"
#     # Only the first 3 first actress/actors
#   director: "Frank Darabont"
#   storyline: |
#     Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man's unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.
#   title: "The Shawshank Redemption"
#   year: 1994
#   # etc.

# # etc. up to 5 movies.

##






