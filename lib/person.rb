# your code goes here

class Person
  attr_accessor :name, :bank_account, :happiness, :hygiene
  
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
  
  def get_paid(salary)
    @bank_account += salary
    return 'All about the benjamins'
  end
  
  def take_bath
    @hygiene += 4
    if @hygiene > 10
       @hygiene = 10
    end
    return 'Rub-a-dub just relaxing in the tub'
  end
  
  def work_out
     @happiness += 2
     if @happiness > 10
        @happiness = 10
     end
     @hygiene -= 3
     return 'another one bites the dust'
  end
  
  def call_friend(friend)
      friend.@happiness += 3
      @happiness += 3
      return "Hi #{friend.@name}. It's #{@name}! How are you?"
  end
  
  def start_conversation(person, topic)
      if topic == 'politics'
         return 'blah blah partisan blah lobbyist'
      elsif topic == 'weather'
         return 'blah blah sun blah rain'
      else
         return 'blah blah blah blah blah'
  end
end