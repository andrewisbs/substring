

# ok, you need a function that will take a string and an array of words, and 
# tell you how many times it counts words (and sub words) 
#  in the string

def sub_string (word, array_words)
    return_hash =Hash.new(0)
    test_word = word.split
    test_word.each_with_index do |word, index|
        test_word[index] =test_word[index].downcase
    end
    test_word.each do |word|
    array_words.reduce(return_hash) do |result, match|
        if (word.include?(match))
             return_hash[match] +=1
        end
    end
end
    # "hello".include?("lo")  #=> true
    # ^this will be invaluable
    # needs to return a hash with the sub strings found (and number of times found)
    # case insensitive
    # should be able to take multiple words in argument
    return return_hash
end
list_words = ["hi", "howdy", 'do', 'down', 'dirty']
howdy = "Di you do it? HI do do do down HOwday howdy"
p sub_string(howdy, list_words)