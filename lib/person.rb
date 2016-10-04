#OBJECTIVES
# Gain proficiency instantiating a class
# Gain ability to discern when to implement attr_accessor, attr_reader, and attr_writer
# Gain abiity to discern when to define your own attr_reader(getter) and attr_writer(setter) methods


class Person
  attr_accessor :bank_account,:happiness, :hygiene
  attr_reader :name

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
    else
      @happiness
    end
  end


  def happiness=(num) #this is when you change it!! you dont touch this when incrmeenting
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

def hygiene #this is when you change it!! you dont touch this when incrmeenting #why isn't it self.hygiene?? just @hygiene?
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end
   def hygiene=(num) #this is when you change it!! you dont touch this when incrmeenting #why isn't it self.hygiene?? just @hygiene?
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def happy?
    @happiness > 7 ? true :false
  end

  def clean?
    @hygiene > 7 ? true :false
  end




  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end



  def take_bath
    self.hygiene +=4 #why isn't it self.hygiene?? not just @hygiene?
    return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend) #person is an instance of Class Person
  
    friend.happiness +=3
    self.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    people_objects = [self, person]
    if topic == 'politics' 
      person.happiness -=2 
      self.happiness -=2 
      return "blah blah partisan blah lobbyist"
    elsif topic == 'weather' 
      person.happiness +=1

      self.happiness +=1 
      return "blah blah sun blah rain"
      else
      return "blah blah blah blah blah" 
    end

  end




  # def bank_account=(bank_account)
  #   @bank_account = bank_account
  # end
  
end