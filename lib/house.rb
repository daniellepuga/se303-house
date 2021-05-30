class House
  
  attr_reader :sentence_start

  def initialize(sentence_start="This is")
    @sentence_start = sentence_start
  end

  # FIXMEPLX
  # def build_verse(subject, verb)
  #   # sentence_start + subject + that + verb
  # end

  
  # def subjects
  #   @subjects = ["house", "malt", "rat", "cat", "dog", "cow with the crumpled horn", "maiden all forlorn", "priest all shaven and shorn", "rooster that crowed in the morn", "farmer sowing his corn", "horse and the hound and the horn"]
  # end

  # def verbs
  #   @verbs = ["Jack built", "lay in", "ate", "killed", "worried", "tossed", "milked", "kissed", "married", "woke", "kept", "belonged to"]
  # end

  def verses
    @verses = ["the malt that lay in", "the rat that ate", "the cat that killed", "the dog that worried", "the cow with the crumpled horn that tossed", "the maiden all forlorn that milked", "the man all tattered and torn that kissed", "the priest all shaven and shorn that married", "the rooster that crowed in the morn that woke", "the farmer sowing his corn that kept", "the horse and the hound and the horn that belonged to"]
  end

  def suffix
    @suffix = "the house that Jack built.\n"
  end

  def line(number)
    if number == 1
      "#{sentence_start} #{suffix}"
    else
      "#{sentence_start} #{verses.slice(0, number-1).reverse.join(' ')} #{suffix}"
    end
  end

    def recite
      (1..12).each.collect { |n| line(n) }.join("\n")
    end

end
  
class PirateHouse < House

  def initialize(sentence_start = "Thar be")
    @sentence_start = sentence_start
  end
end

class RandomHouse < House

  def initialize(sentence_start = "This is", rand_seed: Random.new())
    sentence_start = @sentence_start
    @rand_seed = rand_seed
  end

  def verses
    @verses = @verses.shuffle(rand: Random.new(@rand_seed))
  end

end
