require './lib/pig_latin.rb'

describe PigLatin do

  before(:all) do
    @word1 = 'glove'
    @word2 = 'egg'
    @word3 = 'yellow'
    @word4 ='rhythm'
  end

  describe ".starts_with_y?" do
    it "returns true if a word begins with 'y'" do
      expect(PigLatin::starts_with_y?(@word3)).to be_true
    end

    it "returns false if a word doesn't begin with 'y'" do
      expect(PigLatin::starts_with_y?(@word1)).to be_false
    end
  end

  describe ".includes_y?" do
    it "returns true if a word contains the letter 'y'" do
      expect(PigLatin::includes_y?(@word4)).to be_true
    end

    it "returns false if a word doesn't contain the letter 'y'" do
      expect(PigLatin::includes_y?(@word2)).to be_false
    end
  end

  describe ".doesnt_start_with_vowel?" do
    it "returns true if a word begins with a vowel" do
      expect(PigLatin::doesnt_start_with_vowel?(@word3)).to be_true
    end

    it "returns false if a word doesn't begin with a vowel" do
      expect(PigLatin::doesnt_start_with_vowel?(@word4)).to be_true
    end
  end

  describe ".convert_consonant_word" do
    it "converts a word that begins with consonant" do
      expect(PigLatin::convert_consonant_word(@word1)).to eq 'oveglay'
    end
  end

  describe ".convert_vowel_word" do
    it "converts a word that begins with a vowel" do
      expect(PigLatin::convert_vowel_word(@word2)).to eq 'eggway'
    end
  end

  describe ".convert_y_word" do
    it "properly converts a word that begins with 'y'" do
      expect(PigLatin::convert_y_word(@word3)).to eq 'ellowyay'
    end
  end

  describe ".convert" do
    it "converts a word that begins with consonant" do
      expect(PigLatin::convert(@word1)).to eq 'oveglay'
    end

    it "converts a word that begins with a vowel" do
      expect(PigLatin::convert(@word2)).to eq 'eggway'
    end

    it "converts a word that begins with 'y'" do
      expect(PigLatin::convert(@word3)).to eq 'ellowyay'
    end

    it "converts a word that includes 'y'" do
      expect(PigLatin::convert(@word4)).to eq 'ythmrhay'
    end
  end
end
