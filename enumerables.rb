require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
    names_arr = spicy_foods.collect do |f|
      f[:name]
    end
    names_arr
end

def spiciest_foods(spicy_foods)
    spiciest = spicy_foods.select do |f|
      f[:heat_level] > 5
    end
    spiciest
end


def print_spicy_foods(spicy_foods)
  spicy_foods.each do |f|
    puts "#{f[:name]} (#{f[:cuisine]}) | Heat Level: " + '🌶' * f[:heat_level]
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
    spicy_foods.find do |f|
      f[:cuisine] == cuisine
    end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |f|
    f[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  spicy_foods.each do |f|
    if f[:heat_level] > 5
    puts "#{f[:name]} (#{f[:cuisine]}) | Heat Level: " + '🌶' * f[:heat_level]
    end
  end
end
  
# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  level_arr = []
  spicy_foods.each do |f|
    level_arr << f[:heat_level]
  end
  total = level_arr.sum
  total / spicy_foods.length
end

average_heat_level(spicy_foods)
