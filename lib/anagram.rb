# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def split_word
        self.word.split("")
    end

    def split_array(array)    
        array.map{|e| e.split("")}
    end

    def match(array)
        result = []
        new_array = split_array(array)
        new_array.each do |e| 
            if e.sort == split_word.sort
                result << e.join("")
            end
            result
        end
        result
    end

end 