def reverse_each_word(str)
  str_arr = str.split(" ")
  # * .EACH METHOD
  reversed_arr = []
  str_arr.each do |word|
    # for each word, we need to reverse it, and push it into the rev_arr
    # p word.reverse
    reversed_arr << word.reverse
    # This is a destructive method with the {!}
    # word.reverse!
  end
  reversed_arr.join(" ")

  # * .COLLECT/MAP METHOD
  collect_arr = str_arr.collect do |word|
    word.reverse
  end
  collect_arr.join(" ")
  # .join(" ")
  # The return of .collect is the manipulated array

  # * THE SUPER SHORT WAY...
  str.split(" ").collect { |word| word.reverse }.join(" ")
  
end

p reverse_each_word("hello there, the angel from my nightmares")
