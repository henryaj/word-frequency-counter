# Word frequency counter by Henry Stanley

puts "Please enter your text. >"
text = gets.chomp

words = text.split(" ") # takes 'text' and splits using a space as a delimiter, assigns those words to an array

# set up a new hash called frequencies, with default value 0
frequencies = Hash.new(0)

# iterate over the array of words, putting each into the hash and incrementing by 1
words.each do |x|
    frequencies[x] +=1
end

# sort the frequencies, then reverse the order so it is descending
frequencies = frequencies.sort_by {|a, b| b}
frequencies.reverse!

# print each word out in order
frequencies.each do |word, value|
    puts word + " " + value.to_s
end