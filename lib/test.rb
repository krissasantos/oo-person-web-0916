#OBJECTIVES
# Gain proficiency instantiating a class
# Gain ability to discern when to implement attr_accessor, attr_reader, and attr_writer
# Gain abiity to discern when to define your own attr_reader(getter) and attr_writer(setter) methods


class Person
  attr_accessor :bank_account, :happiness, :hygiene
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


  def happiness=(num)
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

   def hygiene=(num)
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
    @hygiene +=4
    @hygiene > 10 ? @hygiene = 10 : @hygiene = @hygiene
   
    return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    @happiness += 2
    @happiness > 10 ? @happiness = 10 : @happiness = @happiness

    @hygiene -= 3
    @hygiene < 1 ? @hygiene = 0 : @hygiene = @hygiene

    return "♪ another one bites the dust ♫"
  end

  def call_friend(the_self) #person is an instance of Class Person
    @happiness +=1
  end

  def start_conversation(person, topic)
    topic == 'politics' ? person.happiness -=2 : @happiness
    # topic == 'weather' ? "blah blah sun blah rain" : @happiness
    
    if topic == 'weather' 
     person.happiness +=1
     return "blah blah sun blah rain"
    else
      @happiness
    end


  end




  # def bank_account=(bank_account)
  #   @bank_account = bank_account
  # end
  
end