require 'pry'

arr = [1,2,3,4,5,6]
arr1 = ['yes','no', 'maybe', 'no']

# Find (.find) will search through array and return the FIRST entry that satisfies your condition
finder = arr1.find do |x|
  # find where x == 'no'
  # binding.pry
  x == 'no'
end

# Select (.select) will search through array and return the ALL entries that satisfies your condition
selector = arr1.select do |x|
  # find where x == 'no'
  # binding.pry
  x == 'no'
end

binding.pry