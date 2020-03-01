$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 
  result = {}
  director_index = 0
  
  while director_index < nds.length do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
    end 
  result 
end

def gross_for_director(director_data)
  earnings = 0
  index = 0 
  while index < director_data[:movies].length do
    earnings += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end
  earnings 
end 
