class Book
# write your code here
    attr_reader :title
    # doesn't capitalize little words in title
    # does capitalize little words at start of title
    def title=(title)
        words = title.split
        little_words = ['the', 'and', 'of', 'over', 'a', 'an', 'in']
        newTitle = ""
        words.each_with_index do |word, index|
            if little_words.include?(word) 
                if index == 0
                    word = word.capitalize
                end
            else
                word = word.capitalize
            end
            newTitle += word 
            if index != words.length - 1
                newTitle += " " 
            end
        end
        @title= newTitle
    end
end
