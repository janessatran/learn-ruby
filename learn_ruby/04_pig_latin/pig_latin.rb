#write your code here
def pos_first_vowel(word)
    vowels = ['a', 'e', 'i', 'o', 'u', 'q']
    chars = word.split("")
    chars.each_with_index do |char, index|
        if vowels.include?(char)
            if char == 'q'
                return index + 2 
            end
            return index
        end
    end
    return -1
end

def translate(str)
    words = str.split(" ")
    newWord = ''
    words.each_with_index do |word, index| 
        # find first vowel in word
        firstVowelIdx = pos_first_vowel(word)
        # if first letter is a vowel, leave on word
        if firstVowelIdx == 0
            newWord += word + "ay"
        elsif firstVowelIdx == 1 
            newWord += word[1..-1] + word[0] + "ay"
        elsif firstVowelIdx == 2 
            newWord += word[2..-1] + word[0..1] + "ay"
        elsif firstVowelIdx == 3
            newWord += word[3..-1] + word[0..2] + "ay"
        end

        if index != words.length - 1
            newWord += " "
        end
    end
    return newWord
end
