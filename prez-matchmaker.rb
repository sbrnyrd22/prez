#This program randomly pairs up some 2016 Republican Presidential candidates
#into President/Vicepresident teams and prints them to the screen.
#Each time the program runs it will randomize the pairs, and order them
#by longest first.
#
#An array of some candidate last names.
candidates =  [
              "Bush",
              "Carson",
              "Christie",
              "Cruz",
              "Fiorina",
              "Huckabee",
              "Jindal",
              "Paul",
              "Perry",
              "Rubio",
              "Trump",
              "Walker"
              ]

#Randomize the array.
candidates = candidates.shuffle!

#Split the array into a hash of two-name pairs.
pairs_hash = Hash[candidates.each_slice(2).to_a]

#Create a new empty array.
pairs_array = []

#Loop through the hash pairs, turn each pair into a string,
#and store the string into the new array.
pairs_hash.each do |prez, viceprez|
  string = "#{prez} - #{viceprez}"
  pairs_array.push(string)
end

#Sort the array by length of each string, from longest to shortest.
pairs_array.sort_by! { |x| -x.length }

#Output the pairs to the screen.
pairs_array.each do |x|
  def bumpersticker(z)
    z = "#{x} 2016!!"
    z = z.upcase
    return z
  end
  puts bumpersticker(x)
end
