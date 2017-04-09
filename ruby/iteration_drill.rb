# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

def asterisk(arr)
index = 0
newStr = ""
while index < arr.length 
   newStr += arr[index] + "*"
   index += 1 
  end
  p newStr
end

asterisk(zombie_apocalypse_supplies)

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

def alphabetize(arr)
arr.each_index do |firstWord|
  arr.each_index do |secondWord|
    if arr[firstWord].downcase < arr[secondWord].downcase
      arr[firstWord], arr[secondWord] = arr[secondWord], arr[firstWord]
    end
  end
end
end

alphabetize(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def search_for(arr, str)
index = 0 
while index < arr.length 
  if arr[index] == str 
    return true 
  end
  index += 1
end
end

search_for(zombie_apocalypse_supplies, "compass")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def downsize(arr)
newArr = []
until newArr.length == 5
newArr.push(arr[rand(arr.length)])
end
p newArr
end

downsize(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

def combine(arr1,arr2)
newArr = arr1.concat(arr2)
newArr.uniq!
p newArr
end

combine(zombie_apocalypse_supplies, other_survivor_supplies)


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

def write_it_out(hash)
newStr = ""
hash.each do |key, value|
  newStr += key + "-" + value.to_s + "*"
  end
p newStr
end

write_it_out(extinct_animals)

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

def earlier(hash)
earlier_animals = {}
hash.each do |key, value|
  if value <= 2000
    earlier_animals[key] = value
  end
end
p earlier_animals
end

earlier(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
