class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def happiness=(h)
    if h < 0
      @happiness = 0
    elsif h > 10
      @happiness = 10
    else
      @happiness = h
    end
  end
  
  def hygiene=(h)
    if h < 0
      @hygiene = 0
    elsif h > 10
      @hygiene = 10
    else
      @hygiene = h
    end
  end
  
  def clean?
    @hygiene > 7 ? true : false
  end
  
  def happy?
    @happiness > 7 ? true : false
  end
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    self.hygiene = (@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene = (@hygiene - 3)
    self.happiness = (@happiness + 2)
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness = (@happiness + 3)
    friend.happiness = (friend.happiness + 3)
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  
  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = (@happiness - 2)
      friend.happiness = (friend.happiness - 2)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = (@happiness + 1)
      friend.happiness = (friend.happiness + 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
    