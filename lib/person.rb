class Person
  attr_reader:name
  attr_accessor :bank_account, :happiness, :hygiene
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(happiness)
    @happiness = happiness
    @happiness = 0 if @happiness < 0
    @happiness = 10 if @happiness > 10
  end
  
  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 0 if @hygiene < 0
    @hygiene = 10 if @hygiene > 10
  end
  
  def clean?
    self.hygiene > 7 ? true : false
  end
  
  def happy?
    self.happiness > 7 ? true : false
  end
  
  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end