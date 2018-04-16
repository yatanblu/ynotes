
# INDEX LIVECODE
# 1. Acronymize
# 2. Encrypt


####  Acronymize File
def acronymize(sentence)
  # 1. split the sentence
  # 2. get the first character
  # 3. upcase the character
  # 4. join them together

# EACH WAY
  words = sentence.split (" ")
  letters = []
  words. each do |word|
    letters << word[0]
  end
  letters.join("")
end

# MAP WAY
  words = sentence.split (" ")
  letters = words. each do |word|
  word[0]
  end
  letters.join("")
end

# TESTING Acronymize

describe "#acronymize" do
  it "should return a string" do
    #Perform the test
    expect(acronymize("hello world").class)to eq (String)
  end

  it "should return '' when passed ''" do
    expect acronymize("").to eq("")
  end

  it "should return all the first letters upcased" do
    expect(acronymize("Hello World")).to eq("HW")
  end
end

# To Use
rspec aronymize.rb

### Encrypt

def encrypt
  # want an array of letters
  # want each letter inside a new array
  # put the array back together again
  alphabet = ("A".."Z").to_a
  letters = sentence.chars
 encrypted = letters.map do |letter|
  position = alphabet.index(letter)
  position.nil? ? letter: alphabet[position-3]
  end
  encrypted.join()
end


# Test

describe "#encrypt" do
it "should return the correct encrypted string" do
  sentence = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
  encrypted_sentence = encrypt(sentence)
  expect(encrypt(encrypted_sentence)).to eq("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
end
