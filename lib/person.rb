# your code goes here

class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader   :name

  def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8

      @hygiene = 8
  end

  def clean?
    if @happiness > 7
       return true
    else
       return false
    end
  end

  def happy?
    if @happiness > 7
       return true
    end
    false
  end

  def clean?
    if @hygiene > 7
       return true
    end
    false
  end

  def happiness=(num)
     @happiness = num
     @happiness = 10 if @happiness > 10
     @happiness = 0  if @happiness < 0
  end

  def hygiene=(num)
     @hygiene = num
     @hygiene = 10 if @hygiene > 10
     @hygiene = 0  if @hygiene < 0
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene +=4
    if @hygiene > 10
       @hygiene = 10
    end
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
     self.happiness += 2
     if @happiness > 10
        @happiness = 10
     end
     self.hygiene -=3
     return '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
      friend.happiness += 3
      self.happiness += 3
      return "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)
      if topic == 'politics'
         person.happiness -=2
         self.happiness -=2
         return 'blah blah partisan blah lobbyist'
      elsif topic == 'weather'
        person.happiness +=1
        self.happiness +=1
         return 'blah blah sun blah rain'
      else
         return 'blah blah blah blah blah'
      end
  end
end
