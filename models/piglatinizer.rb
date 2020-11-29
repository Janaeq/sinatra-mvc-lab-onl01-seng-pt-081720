class PigLatinizer
    
    def piglatinize(sentence)
        get_translated = sentence.split(' ')
        word_translation = get_translated.map {|word| translated_word(word)}
        sentence_translation = word_translation.join(" ")
    end

    def translated_word(word)
        alpha = ('a'..'z').to_a + ('A'..'Z').to_a
        vowels = %w[a e i o u] + %w[A E I O U]
        consonants = alpha - vowels
        if word.length < 2
            word + "way"
        elsif vowels.include?(word[0])
            word + "way"
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
            word[3..-1] + word[0..2] + 'ay'
        elsif consonants.include?(word[0]) && consonants.include?(word[1])
            word[2..-1] + word[0..1] + 'ay'
        else
            word[1..-1] + word[0] + 'ay'
        end
     end 
end