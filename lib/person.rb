# your code goes here
class Person
  attr_accessor :bank_account
  attr_writer :happiness, :hygiene
  attr_reader :name, :work_out, :call_friend

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    @happiness
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
"all about the benjamins"
  end


  def take_bath
    self.hygiene = @hygiene + 4
    hygiene
  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness + 2
    happiness
    self.hygiene = @hygiene - 3
    hygiene
"♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness = @happiness + 3
    happiness
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness +=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
