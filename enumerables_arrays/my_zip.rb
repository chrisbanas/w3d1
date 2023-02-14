# Write my_zip to take any number of arguments. It should return a new array containing self.length elements. Each element of the new array should be an array with a length of the input arguments + 1 and contain the merged elements at that index. If the size of any argument is less than self, nil is returned for that location.


class Array


    def my_zip(*args)

        args_and_self = []
        args_and_self << self
        args.each { |sub_arr| args_and_self << sub_arr }

        final_arr = []

        (0..args.length).each do |i|
            temp_arr = []
            args_and_self.each do |sub_arr|
                if sub_arr[i].nil?
                    temp_arr << nil
                else
                    temp_arr << sub_arr[i]
                end
            end
            final_arr << temp_arr
        end

       final_arr[0...self.length]

    end

end








a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

c = [10, 11, 12]
d = [13, 14, 15]
p [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]



# example from spec

# a = [ 4, 5, 6 ]
# b = [ 7, 8, 9 ]
# [1, 2, 3].zip(a, b)   #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
# [1, 2].zip(a, b)      #=> [[1, 4, 7], [2, 5, 8]]
# a.zip([1, 2], [8])    #=> [[4, 1, 8], [5, 2, nil], [6, nil, nil]]


# in the example i[0] become the first array then so on


[[4, 5, 6], [7, 8, 9]]
[[1, 2], [8]]
[[4, 5, 6], [7, 8, 9]]
[[4, 5, 6], [7, 8, 9], [10, 11, 12], [13, 14, 15]]
