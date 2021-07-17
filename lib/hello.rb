def hello_t(array)
    if block_given?
         i = 0                   # this is our counter for the loop and will be used as the index numbers through the iteration

      while i < array.length  # while i is less than the length of the array, run the code
         yield(array[i])      # we pass the array with it's index to the block
         i = i + 1            # i goes up by 1 each time the loop is run while it is less than the lenth of the array
      end   
      array 
    else 
       puts "Hey! No block was given!"
    end
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
    if name.start_with?("T")
      puts "Hi, #{name}"
    end
end