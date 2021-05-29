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
    case number
      when 1
        "#{sentence_start} #{suffix}"
      when 2
        "#{sentence_start} #{verses[0]} #{suffix}"
      when 3
        "#{sentence_start} #{verses[1]} #{verses[0]} #{suffix}"
      when 4
        "#{sentence_start} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 5
        "#{sentence_start} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 6
        "#{sentence_start} #{verses[4]} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 7
        "#{sentence_start} #{verses[5]} #{verses[4]} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 8
        "#{sentence_start} #{verses[6]} #{verses[5]} #{verses[4]} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 9
        "#{sentence_start} #{verses[7]} #{verses[6]} #{verses[5]} #{verses[4]} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 10
        "#{sentence_start} #{verses[8]} #{verses[7]} #{verses[6]} #{verses[5]} #{verses[4]} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 11
        "#{sentence_start} #{verses[9]} #{verses[8]} #{verses[7]} #{verses[6]} #{verses[5]} #{verses[4]} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      when 12
        "#{sentence_start} #{verses[10]} #{verses[9]} #{verses[8]} #{verses[7]} #{verses[6]} #{verses[5]} #{verses[4]} #{verses[3]} #{verses[2]} #{verses[1]} #{verses[0]} #{suffix}"
      end
    end

    def recite
      (1..12).each.collect { |n| line(n) }.join("\n")
    end
end


