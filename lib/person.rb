require "pry"

# your code goes here

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(n)
    @happiness = n
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(n)
    @hygiene = n
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    hygiene=(self.hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    happiness=(self.happiness += 2)
    hygiene=(self.hygiene -= 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(name_friend)
    Person.new(name_friend)
    happiness=(self.happiness += 3)
    happiness=(name_friend.happiness += 3)
    "Hi #{name_friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      happiness=(self.happiness -= 2)
      happiness=(person.happiness -= 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      happiness=(self.happiness += 1)
      happiness=(person.happiness += 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

# binding.pry
end
