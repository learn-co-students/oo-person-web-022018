# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(n)
    @happiness = [0, [n, 10].min].max
  end

  def hygiene=(n)
    @hygiene = [0, [n, 10].min].max
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(n)
    @bank_account += n
    'all about the benjamins'
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name.capitalize}! It's #{self.name.capitalize}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when 'politics'
      self.happiness = self.happiness - 2
      person.happiness = person.happiness - 2
      'blah blah partisan blah lobbyist'
    when 'weather'
      self.happiness = self.happiness + 1
      person.happiness = person.happiness + 1
      'blah blah sun blah rain'
    when 'programming'
      "blah blah blah blah blah"
    else
      ''
    end
  end
end
