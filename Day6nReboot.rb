#KEY Shortcuts
# ALT - 5 => []
# ALT - 7 => ||
# ALT - 8 => {}


## DAY 6:

# INDEX
# 1. REGEXP - REGULAR EXPRESSIONS
# 2. SYMBOLS
# 3.


# 1. REGEXP

## DATA VALIDATION
# e.g. ID, CC

## DATA EXTRACTION
# PARSING LARGE DATA

# SYNTAX
START - END
/ SYNTAX $/
/a/  #a
/ab/ #ab

/abc?/ #abc or ab or ab
/hello*/ # hell or helloooooo or helloo
/hello+/ # hello or hellooooooooo
/abc{3}/ or /abc{3,5}/  # ab followed by 3 characters, or 3 to 6 characters
/(abc)+/

/\d/          # like /[0-9]/
/\D/          # like /[^0-9]/
/\w/          # like /[a-zA-Z0-9_]/
/\W/          # like /[^a-zA-Z0-9_]/
/\b/          # word boundary (start or end of word)
/\s/          # whitespace (space, tab, line-break, ...)


# RUBULAR - YOUR REGEX BUDDY
http://rubular.com
a

### LIVECODE - FRENCH SSN

# RSPEC
describe "#french_ssn"

it "should return a string" do
  expect(french_ssn("Abc").class)to eq(String)
end

it "should return invalid when invalid SSN"
expect(french_ssn_info("12345")).to eq("invalid SSN"
end

it "should return valid information if its a valid SSN "
expect(french_ssn_info("1 84 12 76 451 089 46")).to eq("a man, born in December, 1984 in Seine-Maritime."
end

end

# FRENCH_SSN
def french_ssn(number = "")
number.match
end
