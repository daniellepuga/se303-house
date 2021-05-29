class House
  
  attr_reader :sentence_start

  def initialize(sentence_start="This is the")
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
    @verses = ["malt that lay in", "rat that ate", "cat that killed", "dog that worried", "cow with the crumpled horn that tossed", "maiden all forlorn that milked", "man all tattered and town that kissed", "priest all shaven and sorn that married", "rooster that crowed in the morn that woke", "farmer sowing his corn that kept", "horse and the hound and the horn that belonged to"]
  end

  def suffix
    @suffix = "house that Jack built."
  end

  def line(number)
    case number
      when 1
        "#{sentence_start} #{suffix}\n"
      when 2
        "#{sentence_start} #{verses[0]} the #{suffix}\n"
      when 3
        "#{sentence_start} #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 4
        "#{sentence_start} cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 5
        "#{sentence_start} dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 6
        "#{sentence_start} cow with the crumpled horn that tossed the dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 7
        "#{sentence_start} maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 8
        "#{sentence_start} man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 9
        "#{sentence_start} priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 10
        "#{sentence_start} rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 11
        "#{sentence_start} farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      when 12
        "#{sentence_start} horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the #{verses[1]} the #{verses[0]} the house that Jack built.\n"
      end
    end

    def recite
      (1..12).each.collect { |n| line(n) }.join("\n")
    end
end


