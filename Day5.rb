#KEY Shortcuts
# ALT - 5 => []
# ALT - 7 => ||
# ALT - 8 => {}


## DAY 5:

# INDEX
# 1. HASH
# 2. SYMBOLS
# 3. CSV
# 4. JSON
# 5. LIVECODE


# 1. HASH
####  Student Array Hash
# Want to show Ringo is 24 years old

students = ["Ringo", "John", "Bob"]
students_ages = [24, 19, 33, 45]

# This is how we do it now
students.each_with_index do |student, index|
  puts "#{student} is #{students_ages} years old"


# CRUD
# Property of Hash {}, key and value.
# CREATE

students = {
  "Ringo" => 24,
  "John" => 49,
  "Bob" => 13,
  "Alice" => 61,
  "Seb" => 67
}
#READ
students["Ringo"] => 24 # call value
students["John"] => 49

#UPDATE
students["Ringo"] = 40

#DELETE
students.delete["Bob"]

# How to delete all students who are 24
students.delete_if do |key, value|
    value == 24
end

# Custom methods
puts students.values
puts student.keys
puts students.key?["Bob"]

# Storing multiple data formats
# A Hash can contain other Hashes, Arrays etc

city = {
 "population" => 4000000,
 "inhabitantage" => ["Peter", "Bobby", "Pepe"]

}

# COUNT
# I want to count all the students with the age 24
counter = students.count do |key, value|
  age == 24
end

# Alternative, use only pair
counter = students.count do |pair|
  pair[1] == 24 # or pair.last
end

# HTML Tag generator
def (tag_name, attributes)
 formated _attributes =[]
 attributes.map do |attirube_name, value|
 "#{attribute_name}" =



# 2. SYMBOLS

# When you have more generic descriptors, keywords
#OLD WAY
paris = {
  "country" => "France",
  "population" => 60000,
}
#SYMBOLS
paris = {
  country: "France",
  population: => 60000,
}

# is the same as
paris = {
  :country => "France",
  :population => 60000,
}



# 3. CSV
touch file.CSV
touch parse_csv.rb
require "CSV"
  CSV.foreach("file.csv") do
    p row
    p row.class
    puts "Welcome to #{row[0]. It has #{row{1} inhabitants"
  end


# 4. JSON
# Clearbit AP
# {
#   "name": "Paris"
#   "population": 22000
# }

require "json"
require "open-uri"

JSON.parse()

#"Sebastien has NUMBER_OF_FOLLOWERS"

puts "Welcome, gimme your username"
username = gets.chomp
# 1. Fetch the data from github
url = "https://apigithub.com/users/#{username}"
data = open(url).read
# 2. Convert JSON into ruby hash (using parse)
data_hash = JSON.parse(data)
p data_hash
# 3. Display the data
puts "#{data_hash["name"]} has #{data_hash["followers"] followers}"


# 5. LIVECODE

# SPEC
# Word Frequencies
# Write a program that reads from a text file and compute the histogram of word frequencies in this text.

# TESTFILE

describe "#word_frequency" do
  it "should return a hash" do
  expect(word_frequency("Hello Hello World")).to eq({"Hello" => 2, "World" => 1 })
  end
  it "should return the frequency of word" do
    expect

  end
end

# CODE

def word_frequency(text)
  words = text.split(" ")
  # Iterate over the array
  words.each do |word|
    if le_hash[word].nil?
      le_hash[word] = 1
    else
      le_hash[word] += 1
    end
  end

  # Interface


  require_relative "frequencies.rb"

  puts "Welcome to the word frequency super program"

  text









