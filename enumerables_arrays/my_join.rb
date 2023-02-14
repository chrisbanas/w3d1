# my_join returns a single string containing all the elements of the array, separated by the given string separator. If no separator is given, an empty string is used.

class Array

    def my_join(ele="")
        new_string = ""
        self.each_with_index { |char, i| i == 0 ? new_string += char : new_string += ele + char }
        new_string
    end

end

a = [ "a", "b", "c", "d" ]
p a.my_join         # => "abcd"
p a.my_join("$")    # => "a$b$c$d"
