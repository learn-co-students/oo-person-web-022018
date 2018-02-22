class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_index)
    if happiness_index > 10
      @happiness = 10
    elsif happiness_index < 0
      @happiness = 0
    else
      @happiness = happiness_index
    end
  end

  def hygiene=(hygiene_index)
    if hygiene_index > 10
      @hygiene = 10
    elsif hygiene_index < 0
      @hygiene = 0
    else
      @hygiene = hygiene_index
    end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(name, topic)
    case topic
    when "politics"
      name.happiness -= 2
      self.happiness -= 2
      'blah blah partisan blah lobbyist'
    when "weather"
      name.happiness += 1
      self.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end


end
