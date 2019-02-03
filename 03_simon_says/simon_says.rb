#write your code here
def echo(i)
    return i
end

def shout(i)
    return i.upcase
end

def repeat(input, t=2)
    str = ''
    i = 0
    while i < t
        str += input.to_s 
        # don't add space to last reptition
        if i != t - 1
            str += " "
        end
        i += 1
    end
    return str
end

def start_of_word(word, stopIndex)
    return word[0..stopIndex-1]
end

def first_word(str)
    words = str.split(' ')
    return words[0]
end

# doesn't capitalize little words in title
# does capitalize little words at start of title
def titleize(title)
    words = title.split
    little_words = ['the', 'and', 'of', 'over']
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
    return newTitle
end