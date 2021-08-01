# your code goes here

class Person

    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if num > 10
        @hygiene = 0 if num < 0
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if num > 10
        @happiness = 0 if num < 0
    end

    def happy?
        @happiness > 7 ? true : false 
    end

    def clean?
        @hygiene > 7 ? true : false 
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic 
        when "politics"
            person.happiness -= 2
            self.happiness -=2
            return "blah blah partisan blah lobbyist"
        when "weather"
            person.happiness += 1
            self.happiness +=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"   
        end
    end

    

end
