class Person

  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happy_points = 8
    @hygiene_points = 8
  end

  def bank_account
    @bank_account
  end

  def happiness
    @happy_points
  end

  def happiness=(points)
    if points >= 10
      @happy_points = 10
    elsif points <= 0
      @happy_points = 0
    else
      @happy_points = points
    end
  end

  def hygiene
    @hygiene_points
  end

  def hygiene=(points)
    if points >= 10
      @hygiene_points = 10
    elsif points <= 0
      @hygiene_points = 0
    else
      @hygiene_points = points
    end
  end

  def happy?
    happiness > 7 ? true : false
  end

  def clean?
    hygiene > 7 ? true : false
  end

  def get_paid (salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    @hygiene_points += 4
    self.hygiene=(@hygiene_points)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene_points -= 3
    self.hygiene=(@hygiene_points)
    @happy_points += 2
    self.happiness=(@happy_points)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    @happy_points += 3
    self.happiness=(@happy_points)
    person.happiness += 3
    return "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      @happy_points -= 2
      self.happiness=(@happy_points)
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happy_points += 1
      self.happiness=(@happy_points)
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      'blah blah blah blah blah'
    end
  end

end
