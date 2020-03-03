$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # index = 0
  coordinate_total = 0
  # while index < director_data.length do
    totalindex = 0
    while totalindex < director_data[:movies].length do
      coordinate_total += director_data[:movies][totalindex][:worldwide_gross]
      totalindex += 1
  #   end
  #   index += 1
  end
  coordinate_total

end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
    grossindex = 0
    total = 0
    while grossindex < nds[row_index][:movies].length do
      total += nds[row_index][:movies][grossindex][:worldwide_gross]
      grossindex += 1
    end
    result.merge!(nds[row_index][:name] => total)
    row_index +=1
  end
  result
end
