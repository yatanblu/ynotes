

## SUPANOTES:

## KEY Shortcuts
# ALT - 5 => []
# ALT - 7 => ||
# ALT - 8 => {}



### INDEX
# 1. DATA TYPES
# 2. CONDITIONALS
# 3. LOOPS
# 4. ITERATORS

#### 1. DATA TYPES

## ARRAY

## HASH
Hash = Hash.new = {}

# Show Hash as Arrayaa
Hash.values


#### 3. CONDITIONALS
## IF
if condition # if condition is true
  do this
else
  do this
end

## UNLESS
unless condition #if condition is not true
  do this
else
  do this
end

## CASE
case variable
when condition
  do this
when condition
  do this
else
end


#### 3. LOOPS

## WHILE
while condition # as long as condition is not true
  do this
end

## UNTIL
until condition # until condition is true
  do this
end

## LOOP
loop do
  break if condition
end

## FOR
for variable [, variable ...] in expression [do]
   code
end

#E example number
for i in 0..5
  puts "This is a number #{i}"
end  # => This is a number 0, This is a number 1 etc

#E example array
for value in Array do
  value * 2
end  # Will take each value and multiply by two,


Execut

#### 4. ITERATORS

# EACH WITH INDEX
def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  # You should use Enumerable#each_with_index
  sum = 0
  array.each_with_index { |val, index| sum += val if index.odd? }
  return sum
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  # You should use Enumerable#select
  array.select { |num| num.even? }
end

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  # You should use Enumerable#reject
  array.reject { |num| num.length > max_length }
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  array.find { |num| num < limit }
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  # You should use Enumerable#map
  array.map { |i| i + "!" }
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use of Enumerable#reduce
  array.reduce(:+)
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  # You should use of Enumerable#each_slice
  pairs = []
  array.each_slice(2) { |a| pairs.push(a.sort) }
  return pairs
end



