module PigLatin

  VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

  def self.starts_with_y?(word)
    word[0] == 'y' || word[0] == 'Y'
  end

  def self.includes_y?(word)
    word.include?('Y') || word.include?('y')
  end

  def self.doesnt_start_with_vowel?(word)
    !VOWELS.include?(word[0])
  end

  def self.convert_consonant_word(word)
    word_array = word.partition(/^[^aeiouy]+/)
    word_array[2] + word_array[1] + 'ay'
  end

  def self.convert_vowel_word(word)
    word + 'way'
  end

  def self.convert_y_word(word)
    word_array = word.partition(/^[^aeiou]+/)
    word_array[2] + word_array[1] + 'ay'
  end

  def self.convert(word)
    return self.convert_y_word(word) if self.starts_with_y?(word)
    return self.convert_consonant_word(word) if self.includes_y?(word) || self.doesnt_start_with_vowel?(word)
    self.convert_vowel_word(word)
  end

end
